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

-- DATE "11/18/2024 16:37:42"

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

ENTITY 	rot_enc_top IS
    PORT (
	MAX10_CLK1_50 : IN std_logic;
	HEX0 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(7 DOWNTO 0);
	GPIO : BUFFER std_logic_vector(35 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0)
	);
END rot_enc_top;

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
-- SW[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[0]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[1]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[2]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[3]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[4]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[5]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[6]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[7]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[10]	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[11]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[12]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[13]	=>  Location: PIN_W13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[14]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[15]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[16]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[17]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[18]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[19]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[20]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[21]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[22]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[23]	=>  Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[24]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[25]	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[26]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[27]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[28]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[29]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[30]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[31]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[32]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[33]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[34]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[35]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[8]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[9]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAX10_CLK1_50	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF rot_enc_top IS
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
SIGNAL ww_GPIO : std_logic_vector(35 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rot_enc_inst|clk_div_inst|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MAX10_CLK1_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \GPIO[0]~input_o\ : std_logic;
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \GPIO[2]~input_o\ : std_logic;
SIGNAL \GPIO[3]~input_o\ : std_logic;
SIGNAL \GPIO[4]~input_o\ : std_logic;
SIGNAL \GPIO[5]~input_o\ : std_logic;
SIGNAL \GPIO[6]~input_o\ : std_logic;
SIGNAL \GPIO[7]~input_o\ : std_logic;
SIGNAL \GPIO[10]~input_o\ : std_logic;
SIGNAL \GPIO[11]~input_o\ : std_logic;
SIGNAL \GPIO[12]~input_o\ : std_logic;
SIGNAL \GPIO[13]~input_o\ : std_logic;
SIGNAL \GPIO[14]~input_o\ : std_logic;
SIGNAL \GPIO[15]~input_o\ : std_logic;
SIGNAL \GPIO[16]~input_o\ : std_logic;
SIGNAL \GPIO[17]~input_o\ : std_logic;
SIGNAL \GPIO[18]~input_o\ : std_logic;
SIGNAL \GPIO[19]~input_o\ : std_logic;
SIGNAL \GPIO[20]~input_o\ : std_logic;
SIGNAL \GPIO[21]~input_o\ : std_logic;
SIGNAL \GPIO[22]~input_o\ : std_logic;
SIGNAL \GPIO[23]~input_o\ : std_logic;
SIGNAL \GPIO[24]~input_o\ : std_logic;
SIGNAL \GPIO[25]~input_o\ : std_logic;
SIGNAL \GPIO[26]~input_o\ : std_logic;
SIGNAL \GPIO[27]~input_o\ : std_logic;
SIGNAL \GPIO[28]~input_o\ : std_logic;
SIGNAL \GPIO[29]~input_o\ : std_logic;
SIGNAL \GPIO[30]~input_o\ : std_logic;
SIGNAL \GPIO[31]~input_o\ : std_logic;
SIGNAL \GPIO[32]~input_o\ : std_logic;
SIGNAL \GPIO[33]~input_o\ : std_logic;
SIGNAL \GPIO[34]~input_o\ : std_logic;
SIGNAL \GPIO[35]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \GPIO[0]~output_o\ : std_logic;
SIGNAL \GPIO[1]~output_o\ : std_logic;
SIGNAL \GPIO[2]~output_o\ : std_logic;
SIGNAL \GPIO[3]~output_o\ : std_logic;
SIGNAL \GPIO[4]~output_o\ : std_logic;
SIGNAL \GPIO[5]~output_o\ : std_logic;
SIGNAL \GPIO[6]~output_o\ : std_logic;
SIGNAL \GPIO[7]~output_o\ : std_logic;
SIGNAL \GPIO[10]~output_o\ : std_logic;
SIGNAL \GPIO[11]~output_o\ : std_logic;
SIGNAL \GPIO[12]~output_o\ : std_logic;
SIGNAL \GPIO[13]~output_o\ : std_logic;
SIGNAL \GPIO[14]~output_o\ : std_logic;
SIGNAL \GPIO[15]~output_o\ : std_logic;
SIGNAL \GPIO[16]~output_o\ : std_logic;
SIGNAL \GPIO[17]~output_o\ : std_logic;
SIGNAL \GPIO[18]~output_o\ : std_logic;
SIGNAL \GPIO[19]~output_o\ : std_logic;
SIGNAL \GPIO[20]~output_o\ : std_logic;
SIGNAL \GPIO[21]~output_o\ : std_logic;
SIGNAL \GPIO[22]~output_o\ : std_logic;
SIGNAL \GPIO[23]~output_o\ : std_logic;
SIGNAL \GPIO[24]~output_o\ : std_logic;
SIGNAL \GPIO[25]~output_o\ : std_logic;
SIGNAL \GPIO[26]~output_o\ : std_logic;
SIGNAL \GPIO[27]~output_o\ : std_logic;
SIGNAL \GPIO[28]~output_o\ : std_logic;
SIGNAL \GPIO[29]~output_o\ : std_logic;
SIGNAL \GPIO[30]~output_o\ : std_logic;
SIGNAL \GPIO[31]~output_o\ : std_logic;
SIGNAL \GPIO[32]~output_o\ : std_logic;
SIGNAL \GPIO[33]~output_o\ : std_logic;
SIGNAL \GPIO[34]~output_o\ : std_logic;
SIGNAL \GPIO[35]~output_o\ : std_logic;
SIGNAL \GPIO[8]~output_o\ : std_logic;
SIGNAL \GPIO[9]~output_o\ : std_logic;
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
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~input_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Equal0~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Equal0~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Equal0~1_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~27\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~28_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|clk_div~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~29\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~30_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|clk_div~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Equal0~3_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Equal0~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|clk_div~5_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~1\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~3\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~5\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~7\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|clk_div~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~9\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~10_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~11\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~12_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|clk_div~3_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~13\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~14_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~15\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~16_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|clk_div~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~17\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~18_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|clk_div~1_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~19\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~20_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~21\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~22_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~23\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~24_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~25\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|Add0~26_combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|clk_out~combout\ : std_logic;
SIGNAL \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \GPIO[9]~input_o\ : std_logic;
SIGNAL \rot_enc_inst|debouncer_B|shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \rot_enc_inst|debouncer_B|Equal0~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[0]~10_combout\ : std_logic;
SIGNAL \GPIO[8]~input_o\ : std_logic;
SIGNAL \rot_enc_inst|debouncer_A|shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \rot_enc_inst|debouncer_A|shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \rot_enc_inst|debouncer_A|Equal0~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|A_delayed~q\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|process_0~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[0]~11\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[1]~12_combout\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[1]~13\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[2]~14_combout\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[2]~15\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[3]~16_combout\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[3]~17\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[4]~18_combout\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[4]~19\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[5]~20_combout\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[5]~21\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[6]~22_combout\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[6]~23\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[7]~24_combout\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[7]~25\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[8]~26_combout\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[8]~27\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg[9]~28_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~93_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~92_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~95_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~94_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~96_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[30]~99_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~166_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~100_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~101_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~167_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~168_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~102_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~104_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~103_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[40]~106_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[40]~105_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~107_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~108_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~109_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~169_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~110_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~111_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~112_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[50]~114_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[50]~113_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~115_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~151_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~116_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~153_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~117_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~154_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~118_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~119_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~170_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~121_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~120_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[60]~123_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[60]~122_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~124_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~155_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~156_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~125_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~126_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~127_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~158_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~128_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~159_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~171_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~129_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~130_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~131_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[70]~132_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[70]~133_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~143_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~144_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[80]~135_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[80]~134_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[88]~136_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[88]~160_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[87]~137_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[87]~161_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[86]~162_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[86]~138_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[85]~163_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[85]~139_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[84]~140_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[84]~164_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[83]~165_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[83]~141_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~172_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~142_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux20~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux19~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux18~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux17~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux16~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux15~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux14~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[66]~60_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[65]~61_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[64]~62_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~64_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~65_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~68_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[60]~69_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[60]~70_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~71_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~94_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~95_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~72_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~73_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~96_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~74_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~104_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~105_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~75_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~106_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~76_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~77_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[70]~79_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[70]~78_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~103_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~86_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[88]~80_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[88]~97_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[87]~81_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[87]~98_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[86]~99_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[86]~82_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[85]~100_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[85]~83_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[84]~101_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[84]~84_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[83]~85_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[83]~102_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~87_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~108_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~88_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[0]~18_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~89_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~11_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~13_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~15_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~17_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~19_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux13~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux12~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux11~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux10~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux9~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux8~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux7~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux6~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux5~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux4~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux3~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux2~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux1~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|Mux0~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|rotary_enc_inst|count_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \rot_enc_inst|debouncer_A|shift_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rot_enc_inst|debouncer_B|shift_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rot_enc_inst|clk_div_inst|clk_div\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rot_enc_inst|seven_seg_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \rot_enc_inst|seven_seg_inst|ALT_INV_Mux14~0_combout\ : std_logic;

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
GPIO <= ww_GPIO;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rot_enc_inst|clk_div_inst|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rot_enc_inst|clk_div_inst|clk_out~combout\);

\MAX10_CLK1_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MAX10_CLK1_50~input_o\);
\rot_enc_inst|seven_seg_inst|ALT_INV_Mux0~0_combout\ <= NOT \rot_enc_inst|seven_seg_inst|Mux0~0_combout\;
\rot_enc_inst|seven_seg_inst|ALT_INV_Mux7~0_combout\ <= NOT \rot_enc_inst|seven_seg_inst|Mux7~0_combout\;
\rot_enc_inst|seven_seg_inst|ALT_INV_Mux14~0_combout\ <= NOT \rot_enc_inst|seven_seg_inst|Mux14~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N16
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

-- Location: IOOBUF_X31_Y0_N23
\GPIO[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\GPIO[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\GPIO[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\GPIO[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\GPIO[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\GPIO[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\GPIO[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\GPIO[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[7]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\GPIO[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[10]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\GPIO[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[11]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\GPIO[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[12]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\GPIO[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[13]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\GPIO[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[14]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\GPIO[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[15]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\GPIO[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[16]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\GPIO[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[17]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\GPIO[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[18]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\GPIO[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[19]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\GPIO[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[20]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\GPIO[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[21]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\GPIO[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[22]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\GPIO[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[23]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\GPIO[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[24]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\GPIO[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[25]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\GPIO[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[26]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\GPIO[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[27]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\GPIO[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[28]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\GPIO[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[29]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\GPIO[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[30]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\GPIO[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[31]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\GPIO[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[32]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\GPIO[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[33]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\GPIO[34]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[34]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\GPIO[35]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[35]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\GPIO[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\GPIO[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[9]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rot_enc_inst|seven_seg_inst|Mux20~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux19~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux18~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux17~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux16~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux15~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|ALT_INV_Mux14~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux13~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux12~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux11~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux10~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux9~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux8~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|ALT_INV_Mux7~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux6~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux5~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux4~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux3~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux2~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|Mux1~0_combout\,
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
	i => \rot_enc_inst|seven_seg_inst|ALT_INV_Mux0~0_combout\,
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

-- Location: IOIBUF_X78_Y3_N8
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

-- Location: LCCOMB_X34_Y1_N0
\rot_enc_inst|clk_div_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~0_combout\ = \rot_enc_inst|clk_div_inst|clk_div\(0) $ (VCC)
-- \rot_enc_inst|clk_div_inst|Add0~1\ = CARRY(\rot_enc_inst|clk_div_inst|clk_div\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|clk_div\(0),
	datad => VCC,
	combout => \rot_enc_inst|clk_div_inst|Add0~0_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~1\);

-- Location: LCCOMB_X35_Y1_N10
\rot_enc_inst|clk_div_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Equal0~2_combout\ = (!\rot_enc_inst|clk_div_inst|clk_div\(10) & (!\rot_enc_inst|clk_div_inst|clk_div\(11) & (\rot_enc_inst|clk_div_inst|clk_div\(8) & \rot_enc_inst|clk_div_inst|clk_div\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|clk_div\(10),
	datab => \rot_enc_inst|clk_div_inst|clk_div\(11),
	datac => \rot_enc_inst|clk_div_inst|clk_div\(8),
	datad => \rot_enc_inst|clk_div_inst|clk_div\(9),
	combout => \rot_enc_inst|clk_div_inst|Equal0~2_combout\);

-- Location: LCCOMB_X35_Y1_N16
\rot_enc_inst|clk_div_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Equal0~0_combout\ = (!\rot_enc_inst|clk_div_inst|clk_div\(5) & (!\rot_enc_inst|clk_div_inst|clk_div\(2) & (\rot_enc_inst|clk_div_inst|clk_div\(4) & !\rot_enc_inst|clk_div_inst|clk_div\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|clk_div\(5),
	datab => \rot_enc_inst|clk_div_inst|clk_div\(2),
	datac => \rot_enc_inst|clk_div_inst|clk_div\(4),
	datad => \rot_enc_inst|clk_div_inst|clk_div\(3),
	combout => \rot_enc_inst|clk_div_inst|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y1_N4
\rot_enc_inst|clk_div_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Equal0~1_combout\ = (!\rot_enc_inst|clk_div_inst|clk_div\(7) & (\rot_enc_inst|clk_div_inst|clk_div\(6) & (!\rot_enc_inst|clk_div_inst|clk_div\(1) & !\rot_enc_inst|clk_div_inst|clk_div\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|clk_div\(7),
	datab => \rot_enc_inst|clk_div_inst|clk_div\(6),
	datac => \rot_enc_inst|clk_div_inst|clk_div\(1),
	datad => \rot_enc_inst|clk_div_inst|clk_div\(0),
	combout => \rot_enc_inst|clk_div_inst|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y1_N26
\rot_enc_inst|clk_div_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~26_combout\ = (\rot_enc_inst|clk_div_inst|clk_div\(13) & (!\rot_enc_inst|clk_div_inst|Add0~25\)) # (!\rot_enc_inst|clk_div_inst|clk_div\(13) & ((\rot_enc_inst|clk_div_inst|Add0~25\) # (GND)))
-- \rot_enc_inst|clk_div_inst|Add0~27\ = CARRY((!\rot_enc_inst|clk_div_inst|Add0~25\) # (!\rot_enc_inst|clk_div_inst|clk_div\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|clk_div\(13),
	datad => VCC,
	cin => \rot_enc_inst|clk_div_inst|Add0~25\,
	combout => \rot_enc_inst|clk_div_inst|Add0~26_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~27\);

-- Location: LCCOMB_X34_Y1_N28
\rot_enc_inst|clk_div_inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~28_combout\ = (\rot_enc_inst|clk_div_inst|clk_div\(14) & (\rot_enc_inst|clk_div_inst|Add0~27\ $ (GND))) # (!\rot_enc_inst|clk_div_inst|clk_div\(14) & (!\rot_enc_inst|clk_div_inst|Add0~27\ & VCC))
-- \rot_enc_inst|clk_div_inst|Add0~29\ = CARRY((\rot_enc_inst|clk_div_inst|clk_div\(14) & !\rot_enc_inst|clk_div_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|clk_div\(14),
	datad => VCC,
	cin => \rot_enc_inst|clk_div_inst|Add0~27\,
	combout => \rot_enc_inst|clk_div_inst|Add0~28_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~29\);

-- Location: LCCOMB_X35_Y1_N30
\rot_enc_inst|clk_div_inst|clk_div~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|clk_div~6_combout\ = (\rot_enc_inst|clk_div_inst|Add0~28_combout\ & !\rot_enc_inst|clk_div_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|clk_div_inst|Add0~28_combout\,
	datad => \rot_enc_inst|clk_div_inst|Equal0~4_combout\,
	combout => \rot_enc_inst|clk_div_inst|clk_div~6_combout\);

-- Location: FF_X35_Y1_N31
\rot_enc_inst|clk_div_inst|clk_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rot_enc_inst|clk_div_inst|clk_div~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(14));

-- Location: LCCOMB_X34_Y1_N30
\rot_enc_inst|clk_div_inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~30_combout\ = \rot_enc_inst|clk_div_inst|clk_div\(15) $ (\rot_enc_inst|clk_div_inst|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|clk_div_inst|clk_div\(15),
	cin => \rot_enc_inst|clk_div_inst|Add0~29\,
	combout => \rot_enc_inst|clk_div_inst|Add0~30_combout\);

-- Location: LCCOMB_X35_Y1_N12
\rot_enc_inst|clk_div_inst|clk_div~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|clk_div~0_combout\ = (\rot_enc_inst|clk_div_inst|Add0~30_combout\ & !\rot_enc_inst|clk_div_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|clk_div_inst|Add0~30_combout\,
	datad => \rot_enc_inst|clk_div_inst|Equal0~4_combout\,
	combout => \rot_enc_inst|clk_div_inst|clk_div~0_combout\);

-- Location: FF_X35_Y1_N13
\rot_enc_inst|clk_div_inst|clk_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~input_o\,
	d => \rot_enc_inst|clk_div_inst|clk_div~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(15));

-- Location: LCCOMB_X35_Y1_N18
\rot_enc_inst|clk_div_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Equal0~3_combout\ = (!\rot_enc_inst|clk_div_inst|clk_div\(13) & (!\rot_enc_inst|clk_div_inst|clk_div\(12) & (\rot_enc_inst|clk_div_inst|clk_div\(14) & \rot_enc_inst|clk_div_inst|clk_div\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|clk_div\(13),
	datab => \rot_enc_inst|clk_div_inst|clk_div\(12),
	datac => \rot_enc_inst|clk_div_inst|clk_div\(14),
	datad => \rot_enc_inst|clk_div_inst|clk_div\(15),
	combout => \rot_enc_inst|clk_div_inst|Equal0~3_combout\);

-- Location: LCCOMB_X35_Y1_N28
\rot_enc_inst|clk_div_inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Equal0~4_combout\ = (\rot_enc_inst|clk_div_inst|Equal0~2_combout\ & (\rot_enc_inst|clk_div_inst|Equal0~0_combout\ & (\rot_enc_inst|clk_div_inst|Equal0~1_combout\ & \rot_enc_inst|clk_div_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|Equal0~2_combout\,
	datab => \rot_enc_inst|clk_div_inst|Equal0~0_combout\,
	datac => \rot_enc_inst|clk_div_inst|Equal0~1_combout\,
	datad => \rot_enc_inst|clk_div_inst|Equal0~3_combout\,
	combout => \rot_enc_inst|clk_div_inst|Equal0~4_combout\);

-- Location: LCCOMB_X35_Y1_N6
\rot_enc_inst|clk_div_inst|clk_div~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|clk_div~5_combout\ = (\rot_enc_inst|clk_div_inst|Add0~0_combout\ & !\rot_enc_inst|clk_div_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|clk_div_inst|Add0~0_combout\,
	datad => \rot_enc_inst|clk_div_inst|Equal0~4_combout\,
	combout => \rot_enc_inst|clk_div_inst|clk_div~5_combout\);

-- Location: FF_X35_Y1_N7
\rot_enc_inst|clk_div_inst|clk_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rot_enc_inst|clk_div_inst|clk_div~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(0));

-- Location: LCCOMB_X34_Y1_N2
\rot_enc_inst|clk_div_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~2_combout\ = (\rot_enc_inst|clk_div_inst|clk_div\(1) & (!\rot_enc_inst|clk_div_inst|Add0~1\)) # (!\rot_enc_inst|clk_div_inst|clk_div\(1) & ((\rot_enc_inst|clk_div_inst|Add0~1\) # (GND)))
-- \rot_enc_inst|clk_div_inst|Add0~3\ = CARRY((!\rot_enc_inst|clk_div_inst|Add0~1\) # (!\rot_enc_inst|clk_div_inst|clk_div\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|clk_div_inst|clk_div\(1),
	datad => VCC,
	cin => \rot_enc_inst|clk_div_inst|Add0~1\,
	combout => \rot_enc_inst|clk_div_inst|Add0~2_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~3\);

-- Location: FF_X34_Y1_N3
\rot_enc_inst|clk_div_inst|clk_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rot_enc_inst|clk_div_inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(1));

-- Location: LCCOMB_X34_Y1_N4
\rot_enc_inst|clk_div_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~4_combout\ = (\rot_enc_inst|clk_div_inst|clk_div\(2) & (\rot_enc_inst|clk_div_inst|Add0~3\ $ (GND))) # (!\rot_enc_inst|clk_div_inst|clk_div\(2) & (!\rot_enc_inst|clk_div_inst|Add0~3\ & VCC))
-- \rot_enc_inst|clk_div_inst|Add0~5\ = CARRY((\rot_enc_inst|clk_div_inst|clk_div\(2) & !\rot_enc_inst|clk_div_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|clk_div_inst|clk_div\(2),
	datad => VCC,
	cin => \rot_enc_inst|clk_div_inst|Add0~3\,
	combout => \rot_enc_inst|clk_div_inst|Add0~4_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~5\);

-- Location: FF_X34_Y1_N5
\rot_enc_inst|clk_div_inst|clk_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rot_enc_inst|clk_div_inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(2));

-- Location: LCCOMB_X34_Y1_N6
\rot_enc_inst|clk_div_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~6_combout\ = (\rot_enc_inst|clk_div_inst|clk_div\(3) & (!\rot_enc_inst|clk_div_inst|Add0~5\)) # (!\rot_enc_inst|clk_div_inst|clk_div\(3) & ((\rot_enc_inst|clk_div_inst|Add0~5\) # (GND)))
-- \rot_enc_inst|clk_div_inst|Add0~7\ = CARRY((!\rot_enc_inst|clk_div_inst|Add0~5\) # (!\rot_enc_inst|clk_div_inst|clk_div\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|clk_div\(3),
	datad => VCC,
	cin => \rot_enc_inst|clk_div_inst|Add0~5\,
	combout => \rot_enc_inst|clk_div_inst|Add0~6_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~7\);

-- Location: FF_X34_Y1_N7
\rot_enc_inst|clk_div_inst|clk_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rot_enc_inst|clk_div_inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(3));

-- Location: LCCOMB_X34_Y1_N8
\rot_enc_inst|clk_div_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~8_combout\ = (\rot_enc_inst|clk_div_inst|clk_div\(4) & (\rot_enc_inst|clk_div_inst|Add0~7\ $ (GND))) # (!\rot_enc_inst|clk_div_inst|clk_div\(4) & (!\rot_enc_inst|clk_div_inst|Add0~7\ & VCC))
-- \rot_enc_inst|clk_div_inst|Add0~9\ = CARRY((\rot_enc_inst|clk_div_inst|clk_div\(4) & !\rot_enc_inst|clk_div_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|clk_div_inst|clk_div\(4),
	datad => VCC,
	cin => \rot_enc_inst|clk_div_inst|Add0~7\,
	combout => \rot_enc_inst|clk_div_inst|Add0~8_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~9\);

-- Location: LCCOMB_X35_Y1_N22
\rot_enc_inst|clk_div_inst|clk_div~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|clk_div~4_combout\ = (\rot_enc_inst|clk_div_inst|Add0~8_combout\ & !\rot_enc_inst|clk_div_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|Add0~8_combout\,
	datad => \rot_enc_inst|clk_div_inst|Equal0~4_combout\,
	combout => \rot_enc_inst|clk_div_inst|clk_div~4_combout\);

-- Location: FF_X35_Y1_N23
\rot_enc_inst|clk_div_inst|clk_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rot_enc_inst|clk_div_inst|clk_div~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(4));

-- Location: LCCOMB_X34_Y1_N10
\rot_enc_inst|clk_div_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~10_combout\ = (\rot_enc_inst|clk_div_inst|clk_div\(5) & (!\rot_enc_inst|clk_div_inst|Add0~9\)) # (!\rot_enc_inst|clk_div_inst|clk_div\(5) & ((\rot_enc_inst|clk_div_inst|Add0~9\) # (GND)))
-- \rot_enc_inst|clk_div_inst|Add0~11\ = CARRY((!\rot_enc_inst|clk_div_inst|Add0~9\) # (!\rot_enc_inst|clk_div_inst|clk_div\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|clk_div\(5),
	datad => VCC,
	cin => \rot_enc_inst|clk_div_inst|Add0~9\,
	combout => \rot_enc_inst|clk_div_inst|Add0~10_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~11\);

-- Location: FF_X34_Y1_N11
\rot_enc_inst|clk_div_inst|clk_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rot_enc_inst|clk_div_inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(5));

-- Location: LCCOMB_X34_Y1_N12
\rot_enc_inst|clk_div_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~12_combout\ = (\rot_enc_inst|clk_div_inst|clk_div\(6) & (\rot_enc_inst|clk_div_inst|Add0~11\ $ (GND))) # (!\rot_enc_inst|clk_div_inst|clk_div\(6) & (!\rot_enc_inst|clk_div_inst|Add0~11\ & VCC))
-- \rot_enc_inst|clk_div_inst|Add0~13\ = CARRY((\rot_enc_inst|clk_div_inst|clk_div\(6) & !\rot_enc_inst|clk_div_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|clk_div\(6),
	datad => VCC,
	cin => \rot_enc_inst|clk_div_inst|Add0~11\,
	combout => \rot_enc_inst|clk_div_inst|Add0~12_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~13\);

-- Location: LCCOMB_X35_Y1_N20
\rot_enc_inst|clk_div_inst|clk_div~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|clk_div~3_combout\ = (\rot_enc_inst|clk_div_inst|Add0~12_combout\ & !\rot_enc_inst|clk_div_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|Add0~12_combout\,
	datad => \rot_enc_inst|clk_div_inst|Equal0~4_combout\,
	combout => \rot_enc_inst|clk_div_inst|clk_div~3_combout\);

-- Location: FF_X35_Y1_N21
\rot_enc_inst|clk_div_inst|clk_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rot_enc_inst|clk_div_inst|clk_div~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(6));

-- Location: LCCOMB_X34_Y1_N14
\rot_enc_inst|clk_div_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~14_combout\ = (\rot_enc_inst|clk_div_inst|clk_div\(7) & (!\rot_enc_inst|clk_div_inst|Add0~13\)) # (!\rot_enc_inst|clk_div_inst|clk_div\(7) & ((\rot_enc_inst|clk_div_inst|Add0~13\) # (GND)))
-- \rot_enc_inst|clk_div_inst|Add0~15\ = CARRY((!\rot_enc_inst|clk_div_inst|Add0~13\) # (!\rot_enc_inst|clk_div_inst|clk_div\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|clk_div_inst|clk_div\(7),
	datad => VCC,
	cin => \rot_enc_inst|clk_div_inst|Add0~13\,
	combout => \rot_enc_inst|clk_div_inst|Add0~14_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~15\);

-- Location: FF_X34_Y1_N15
\rot_enc_inst|clk_div_inst|clk_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rot_enc_inst|clk_div_inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(7));

-- Location: LCCOMB_X34_Y1_N16
\rot_enc_inst|clk_div_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~16_combout\ = (\rot_enc_inst|clk_div_inst|clk_div\(8) & (\rot_enc_inst|clk_div_inst|Add0~15\ $ (GND))) # (!\rot_enc_inst|clk_div_inst|clk_div\(8) & (!\rot_enc_inst|clk_div_inst|Add0~15\ & VCC))
-- \rot_enc_inst|clk_div_inst|Add0~17\ = CARRY((\rot_enc_inst|clk_div_inst|clk_div\(8) & !\rot_enc_inst|clk_div_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|clk_div_inst|clk_div\(8),
	datad => VCC,
	cin => \rot_enc_inst|clk_div_inst|Add0~15\,
	combout => \rot_enc_inst|clk_div_inst|Add0~16_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~17\);

-- Location: LCCOMB_X35_Y1_N8
\rot_enc_inst|clk_div_inst|clk_div~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|clk_div~2_combout\ = (\rot_enc_inst|clk_div_inst|Add0~16_combout\ & !\rot_enc_inst|clk_div_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|clk_div_inst|Add0~16_combout\,
	datad => \rot_enc_inst|clk_div_inst|Equal0~4_combout\,
	combout => \rot_enc_inst|clk_div_inst|clk_div~2_combout\);

-- Location: FF_X35_Y1_N9
\rot_enc_inst|clk_div_inst|clk_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rot_enc_inst|clk_div_inst|clk_div~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(8));

-- Location: LCCOMB_X34_Y1_N18
\rot_enc_inst|clk_div_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~18_combout\ = (\rot_enc_inst|clk_div_inst|clk_div\(9) & (!\rot_enc_inst|clk_div_inst|Add0~17\)) # (!\rot_enc_inst|clk_div_inst|clk_div\(9) & ((\rot_enc_inst|clk_div_inst|Add0~17\) # (GND)))
-- \rot_enc_inst|clk_div_inst|Add0~19\ = CARRY((!\rot_enc_inst|clk_div_inst|Add0~17\) # (!\rot_enc_inst|clk_div_inst|clk_div\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|clk_div\(9),
	datad => VCC,
	cin => \rot_enc_inst|clk_div_inst|Add0~17\,
	combout => \rot_enc_inst|clk_div_inst|Add0~18_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~19\);

-- Location: LCCOMB_X35_Y1_N2
\rot_enc_inst|clk_div_inst|clk_div~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|clk_div~1_combout\ = (\rot_enc_inst|clk_div_inst|Add0~18_combout\ & !\rot_enc_inst|clk_div_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|clk_div_inst|Add0~18_combout\,
	datad => \rot_enc_inst|clk_div_inst|Equal0~4_combout\,
	combout => \rot_enc_inst|clk_div_inst|clk_div~1_combout\);

-- Location: FF_X35_Y1_N3
\rot_enc_inst|clk_div_inst|clk_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rot_enc_inst|clk_div_inst|clk_div~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(9));

-- Location: LCCOMB_X34_Y1_N20
\rot_enc_inst|clk_div_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~20_combout\ = (\rot_enc_inst|clk_div_inst|clk_div\(10) & (\rot_enc_inst|clk_div_inst|Add0~19\ $ (GND))) # (!\rot_enc_inst|clk_div_inst|clk_div\(10) & (!\rot_enc_inst|clk_div_inst|Add0~19\ & VCC))
-- \rot_enc_inst|clk_div_inst|Add0~21\ = CARRY((\rot_enc_inst|clk_div_inst|clk_div\(10) & !\rot_enc_inst|clk_div_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|clk_div_inst|clk_div\(10),
	datad => VCC,
	cin => \rot_enc_inst|clk_div_inst|Add0~19\,
	combout => \rot_enc_inst|clk_div_inst|Add0~20_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~21\);

-- Location: FF_X34_Y1_N21
\rot_enc_inst|clk_div_inst|clk_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rot_enc_inst|clk_div_inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(10));

-- Location: LCCOMB_X34_Y1_N22
\rot_enc_inst|clk_div_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~22_combout\ = (\rot_enc_inst|clk_div_inst|clk_div\(11) & (!\rot_enc_inst|clk_div_inst|Add0~21\)) # (!\rot_enc_inst|clk_div_inst|clk_div\(11) & ((\rot_enc_inst|clk_div_inst|Add0~21\) # (GND)))
-- \rot_enc_inst|clk_div_inst|Add0~23\ = CARRY((!\rot_enc_inst|clk_div_inst|Add0~21\) # (!\rot_enc_inst|clk_div_inst|clk_div\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|clk_div_inst|clk_div\(11),
	datad => VCC,
	cin => \rot_enc_inst|clk_div_inst|Add0~21\,
	combout => \rot_enc_inst|clk_div_inst|Add0~22_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~23\);

-- Location: FF_X34_Y1_N23
\rot_enc_inst|clk_div_inst|clk_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rot_enc_inst|clk_div_inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(11));

-- Location: LCCOMB_X34_Y1_N24
\rot_enc_inst|clk_div_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|Add0~24_combout\ = (\rot_enc_inst|clk_div_inst|clk_div\(12) & (\rot_enc_inst|clk_div_inst|Add0~23\ $ (GND))) # (!\rot_enc_inst|clk_div_inst|clk_div\(12) & (!\rot_enc_inst|clk_div_inst|Add0~23\ & VCC))
-- \rot_enc_inst|clk_div_inst|Add0~25\ = CARRY((\rot_enc_inst|clk_div_inst|clk_div\(12) & !\rot_enc_inst|clk_div_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|clk_div_inst|clk_div\(12),
	datad => VCC,
	cin => \rot_enc_inst|clk_div_inst|Add0~23\,
	combout => \rot_enc_inst|clk_div_inst|Add0~24_combout\,
	cout => \rot_enc_inst|clk_div_inst|Add0~25\);

-- Location: FF_X34_Y1_N25
\rot_enc_inst|clk_div_inst|clk_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \rot_enc_inst|clk_div_inst|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(12));

-- Location: FF_X34_Y1_N27
\rot_enc_inst|clk_div_inst|clk_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~input_o\,
	d => \rot_enc_inst|clk_div_inst|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|clk_div_inst|clk_div\(13));

-- Location: LCCOMB_X35_Y1_N24
\rot_enc_inst|clk_div_inst|clk_out\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|clk_div_inst|clk_out~combout\ = LCELL((\SW[0]~input_o\ & (\rot_enc_inst|clk_div_inst|clk_div\(13))) # (!\SW[0]~input_o\ & ((\rot_enc_inst|clk_div_inst|clk_div\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \rot_enc_inst|clk_div_inst|clk_div\(13),
	datad => \rot_enc_inst|clk_div_inst|clk_div\(15),
	combout => \rot_enc_inst|clk_div_inst|clk_out~combout\);

-- Location: CLKCTRL_G18
\rot_enc_inst|clk_div_inst|clk_out~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\);

-- Location: IOIBUF_X14_Y0_N8
\GPIO[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(9),
	o => \GPIO[9]~input_o\);

-- Location: FF_X60_Y46_N31
\rot_enc_inst|debouncer_B|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	asdata => \GPIO[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|debouncer_B|shift_reg\(0));

-- Location: LCCOMB_X60_Y46_N26
\rot_enc_inst|debouncer_B|shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|debouncer_B|shift_reg[1]~feeder_combout\ = \rot_enc_inst|debouncer_B|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rot_enc_inst|debouncer_B|shift_reg\(0),
	combout => \rot_enc_inst|debouncer_B|shift_reg[1]~feeder_combout\);

-- Location: FF_X60_Y46_N27
\rot_enc_inst|debouncer_B|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	d => \rot_enc_inst|debouncer_B|shift_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|debouncer_B|shift_reg\(1));

-- Location: FF_X60_Y46_N3
\rot_enc_inst|debouncer_B|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	asdata => \rot_enc_inst|debouncer_B|shift_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|debouncer_B|shift_reg\(2));

-- Location: LCCOMB_X60_Y46_N2
\rot_enc_inst|debouncer_B|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|debouncer_B|Equal0~0_combout\ = (\rot_enc_inst|debouncer_B|shift_reg\(1) & (\rot_enc_inst|debouncer_B|shift_reg\(2) & \rot_enc_inst|debouncer_B|shift_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|debouncer_B|shift_reg\(1),
	datac => \rot_enc_inst|debouncer_B|shift_reg\(2),
	datad => \rot_enc_inst|debouncer_B|shift_reg\(0),
	combout => \rot_enc_inst|debouncer_B|Equal0~0_combout\);

-- Location: LCCOMB_X60_Y46_N6
\rot_enc_inst|rotary_enc_inst|count_reg[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|rotary_enc_inst|count_reg[0]~10_combout\ = \rot_enc_inst|rotary_enc_inst|count_reg\(0) $ (VCC)
-- \rot_enc_inst|rotary_enc_inst|count_reg[0]~11\ = CARRY(\rot_enc_inst|rotary_enc_inst|count_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(0),
	datad => VCC,
	combout => \rot_enc_inst|rotary_enc_inst|count_reg[0]~10_combout\,
	cout => \rot_enc_inst|rotary_enc_inst|count_reg[0]~11\);

-- Location: IOIBUF_X16_Y0_N29
\GPIO[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(8),
	o => \GPIO[8]~input_o\);

-- Location: LCCOMB_X47_Y43_N12
\rot_enc_inst|debouncer_A|shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|debouncer_A|shift_reg[0]~feeder_combout\ = \GPIO[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO[8]~input_o\,
	combout => \rot_enc_inst|debouncer_A|shift_reg[0]~feeder_combout\);

-- Location: FF_X47_Y43_N13
\rot_enc_inst|debouncer_A|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	d => \rot_enc_inst|debouncer_A|shift_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|debouncer_A|shift_reg\(0));

-- Location: LCCOMB_X47_Y43_N26
\rot_enc_inst|debouncer_A|shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|debouncer_A|shift_reg[1]~feeder_combout\ = \rot_enc_inst|debouncer_A|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rot_enc_inst|debouncer_A|shift_reg\(0),
	combout => \rot_enc_inst|debouncer_A|shift_reg[1]~feeder_combout\);

-- Location: FF_X47_Y43_N27
\rot_enc_inst|debouncer_A|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	d => \rot_enc_inst|debouncer_A|shift_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|debouncer_A|shift_reg\(1));

-- Location: FF_X47_Y43_N25
\rot_enc_inst|debouncer_A|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	asdata => \rot_enc_inst|debouncer_A|shift_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|debouncer_A|shift_reg\(2));

-- Location: LCCOMB_X47_Y43_N14
\rot_enc_inst|debouncer_A|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|debouncer_A|Equal0~0_combout\ = (\rot_enc_inst|debouncer_A|shift_reg\(0) & (\rot_enc_inst|debouncer_A|shift_reg\(1) & \rot_enc_inst|debouncer_A|shift_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|debouncer_A|shift_reg\(0),
	datac => \rot_enc_inst|debouncer_A|shift_reg\(1),
	datad => \rot_enc_inst|debouncer_A|shift_reg\(2),
	combout => \rot_enc_inst|debouncer_A|Equal0~0_combout\);

-- Location: FF_X47_Y43_N15
\rot_enc_inst|rotary_enc_inst|A_delayed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	d => \rot_enc_inst|debouncer_A|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|rotary_enc_inst|A_delayed~q\);

-- Location: LCCOMB_X47_Y43_N24
\rot_enc_inst|rotary_enc_inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|rotary_enc_inst|process_0~0_combout\ = (\rot_enc_inst|debouncer_A|shift_reg\(1) & (!\rot_enc_inst|rotary_enc_inst|A_delayed~q\ & (\rot_enc_inst|debouncer_A|shift_reg\(2) & \rot_enc_inst|debouncer_A|shift_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|debouncer_A|shift_reg\(1),
	datab => \rot_enc_inst|rotary_enc_inst|A_delayed~q\,
	datac => \rot_enc_inst|debouncer_A|shift_reg\(2),
	datad => \rot_enc_inst|debouncer_A|shift_reg\(0),
	combout => \rot_enc_inst|rotary_enc_inst|process_0~0_combout\);

-- Location: FF_X60_Y46_N7
\rot_enc_inst|rotary_enc_inst|count_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	d => \rot_enc_inst|rotary_enc_inst|count_reg[0]~10_combout\,
	ena => \rot_enc_inst|rotary_enc_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|rotary_enc_inst|count_reg\(0));

-- Location: LCCOMB_X60_Y46_N8
\rot_enc_inst|rotary_enc_inst|count_reg[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|rotary_enc_inst|count_reg[1]~12_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(1) & ((\rot_enc_inst|debouncer_B|Equal0~0_combout\ & (\rot_enc_inst|rotary_enc_inst|count_reg[0]~11\ & VCC)) # (!\rot_enc_inst|debouncer_B|Equal0~0_combout\ 
-- & (!\rot_enc_inst|rotary_enc_inst|count_reg[0]~11\)))) # (!\rot_enc_inst|rotary_enc_inst|count_reg\(1) & ((\rot_enc_inst|debouncer_B|Equal0~0_combout\ & (!\rot_enc_inst|rotary_enc_inst|count_reg[0]~11\)) # (!\rot_enc_inst|debouncer_B|Equal0~0_combout\ & 
-- ((\rot_enc_inst|rotary_enc_inst|count_reg[0]~11\) # (GND)))))
-- \rot_enc_inst|rotary_enc_inst|count_reg[1]~13\ = CARRY((\rot_enc_inst|rotary_enc_inst|count_reg\(1) & (!\rot_enc_inst|debouncer_B|Equal0~0_combout\ & !\rot_enc_inst|rotary_enc_inst|count_reg[0]~11\)) # (!\rot_enc_inst|rotary_enc_inst|count_reg\(1) & 
-- ((!\rot_enc_inst|rotary_enc_inst|count_reg[0]~11\) # (!\rot_enc_inst|debouncer_B|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(1),
	datab => \rot_enc_inst|debouncer_B|Equal0~0_combout\,
	datad => VCC,
	cin => \rot_enc_inst|rotary_enc_inst|count_reg[0]~11\,
	combout => \rot_enc_inst|rotary_enc_inst|count_reg[1]~12_combout\,
	cout => \rot_enc_inst|rotary_enc_inst|count_reg[1]~13\);

-- Location: FF_X60_Y46_N9
\rot_enc_inst|rotary_enc_inst|count_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	d => \rot_enc_inst|rotary_enc_inst|count_reg[1]~12_combout\,
	ena => \rot_enc_inst|rotary_enc_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|rotary_enc_inst|count_reg\(1));

-- Location: LCCOMB_X60_Y46_N10
\rot_enc_inst|rotary_enc_inst|count_reg[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|rotary_enc_inst|count_reg[2]~14_combout\ = ((\rot_enc_inst|rotary_enc_inst|count_reg\(2) $ (\rot_enc_inst|debouncer_B|Equal0~0_combout\ $ (!\rot_enc_inst|rotary_enc_inst|count_reg[1]~13\)))) # (GND)
-- \rot_enc_inst|rotary_enc_inst|count_reg[2]~15\ = CARRY((\rot_enc_inst|rotary_enc_inst|count_reg\(2) & ((\rot_enc_inst|debouncer_B|Equal0~0_combout\) # (!\rot_enc_inst|rotary_enc_inst|count_reg[1]~13\))) # (!\rot_enc_inst|rotary_enc_inst|count_reg\(2) & 
-- (\rot_enc_inst|debouncer_B|Equal0~0_combout\ & !\rot_enc_inst|rotary_enc_inst|count_reg[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(2),
	datab => \rot_enc_inst|debouncer_B|Equal0~0_combout\,
	datad => VCC,
	cin => \rot_enc_inst|rotary_enc_inst|count_reg[1]~13\,
	combout => \rot_enc_inst|rotary_enc_inst|count_reg[2]~14_combout\,
	cout => \rot_enc_inst|rotary_enc_inst|count_reg[2]~15\);

-- Location: FF_X60_Y46_N11
\rot_enc_inst|rotary_enc_inst|count_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	d => \rot_enc_inst|rotary_enc_inst|count_reg[2]~14_combout\,
	ena => \rot_enc_inst|rotary_enc_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|rotary_enc_inst|count_reg\(2));

-- Location: LCCOMB_X60_Y46_N12
\rot_enc_inst|rotary_enc_inst|count_reg[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|rotary_enc_inst|count_reg[3]~16_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(3) & ((\rot_enc_inst|debouncer_B|Equal0~0_combout\ & (\rot_enc_inst|rotary_enc_inst|count_reg[2]~15\ & VCC)) # (!\rot_enc_inst|debouncer_B|Equal0~0_combout\ 
-- & (!\rot_enc_inst|rotary_enc_inst|count_reg[2]~15\)))) # (!\rot_enc_inst|rotary_enc_inst|count_reg\(3) & ((\rot_enc_inst|debouncer_B|Equal0~0_combout\ & (!\rot_enc_inst|rotary_enc_inst|count_reg[2]~15\)) # (!\rot_enc_inst|debouncer_B|Equal0~0_combout\ & 
-- ((\rot_enc_inst|rotary_enc_inst|count_reg[2]~15\) # (GND)))))
-- \rot_enc_inst|rotary_enc_inst|count_reg[3]~17\ = CARRY((\rot_enc_inst|rotary_enc_inst|count_reg\(3) & (!\rot_enc_inst|debouncer_B|Equal0~0_combout\ & !\rot_enc_inst|rotary_enc_inst|count_reg[2]~15\)) # (!\rot_enc_inst|rotary_enc_inst|count_reg\(3) & 
-- ((!\rot_enc_inst|rotary_enc_inst|count_reg[2]~15\) # (!\rot_enc_inst|debouncer_B|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(3),
	datab => \rot_enc_inst|debouncer_B|Equal0~0_combout\,
	datad => VCC,
	cin => \rot_enc_inst|rotary_enc_inst|count_reg[2]~15\,
	combout => \rot_enc_inst|rotary_enc_inst|count_reg[3]~16_combout\,
	cout => \rot_enc_inst|rotary_enc_inst|count_reg[3]~17\);

-- Location: FF_X60_Y46_N13
\rot_enc_inst|rotary_enc_inst|count_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	d => \rot_enc_inst|rotary_enc_inst|count_reg[3]~16_combout\,
	ena => \rot_enc_inst|rotary_enc_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|rotary_enc_inst|count_reg\(3));

-- Location: LCCOMB_X60_Y46_N14
\rot_enc_inst|rotary_enc_inst|count_reg[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|rotary_enc_inst|count_reg[4]~18_combout\ = ((\rot_enc_inst|debouncer_B|Equal0~0_combout\ $ (\rot_enc_inst|rotary_enc_inst|count_reg\(4) $ (!\rot_enc_inst|rotary_enc_inst|count_reg[3]~17\)))) # (GND)
-- \rot_enc_inst|rotary_enc_inst|count_reg[4]~19\ = CARRY((\rot_enc_inst|debouncer_B|Equal0~0_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(4)) # (!\rot_enc_inst|rotary_enc_inst|count_reg[3]~17\))) # (!\rot_enc_inst|debouncer_B|Equal0~0_combout\ & 
-- (\rot_enc_inst|rotary_enc_inst|count_reg\(4) & !\rot_enc_inst|rotary_enc_inst|count_reg[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|debouncer_B|Equal0~0_combout\,
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(4),
	datad => VCC,
	cin => \rot_enc_inst|rotary_enc_inst|count_reg[3]~17\,
	combout => \rot_enc_inst|rotary_enc_inst|count_reg[4]~18_combout\,
	cout => \rot_enc_inst|rotary_enc_inst|count_reg[4]~19\);

-- Location: FF_X60_Y46_N15
\rot_enc_inst|rotary_enc_inst|count_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	d => \rot_enc_inst|rotary_enc_inst|count_reg[4]~18_combout\,
	ena => \rot_enc_inst|rotary_enc_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|rotary_enc_inst|count_reg\(4));

-- Location: LCCOMB_X60_Y46_N16
\rot_enc_inst|rotary_enc_inst|count_reg[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|rotary_enc_inst|count_reg[5]~20_combout\ = (\rot_enc_inst|debouncer_B|Equal0~0_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(5) & (\rot_enc_inst|rotary_enc_inst|count_reg[4]~19\ & VCC)) # (!\rot_enc_inst|rotary_enc_inst|count_reg\(5) 
-- & (!\rot_enc_inst|rotary_enc_inst|count_reg[4]~19\)))) # (!\rot_enc_inst|debouncer_B|Equal0~0_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(5) & (!\rot_enc_inst|rotary_enc_inst|count_reg[4]~19\)) # (!\rot_enc_inst|rotary_enc_inst|count_reg\(5) & 
-- ((\rot_enc_inst|rotary_enc_inst|count_reg[4]~19\) # (GND)))))
-- \rot_enc_inst|rotary_enc_inst|count_reg[5]~21\ = CARRY((\rot_enc_inst|debouncer_B|Equal0~0_combout\ & (!\rot_enc_inst|rotary_enc_inst|count_reg\(5) & !\rot_enc_inst|rotary_enc_inst|count_reg[4]~19\)) # (!\rot_enc_inst|debouncer_B|Equal0~0_combout\ & 
-- ((!\rot_enc_inst|rotary_enc_inst|count_reg[4]~19\) # (!\rot_enc_inst|rotary_enc_inst|count_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|debouncer_B|Equal0~0_combout\,
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(5),
	datad => VCC,
	cin => \rot_enc_inst|rotary_enc_inst|count_reg[4]~19\,
	combout => \rot_enc_inst|rotary_enc_inst|count_reg[5]~20_combout\,
	cout => \rot_enc_inst|rotary_enc_inst|count_reg[5]~21\);

-- Location: FF_X60_Y46_N17
\rot_enc_inst|rotary_enc_inst|count_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	d => \rot_enc_inst|rotary_enc_inst|count_reg[5]~20_combout\,
	ena => \rot_enc_inst|rotary_enc_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|rotary_enc_inst|count_reg\(5));

-- Location: LCCOMB_X60_Y46_N18
\rot_enc_inst|rotary_enc_inst|count_reg[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|rotary_enc_inst|count_reg[6]~22_combout\ = ((\rot_enc_inst|debouncer_B|Equal0~0_combout\ $ (\rot_enc_inst|rotary_enc_inst|count_reg\(6) $ (!\rot_enc_inst|rotary_enc_inst|count_reg[5]~21\)))) # (GND)
-- \rot_enc_inst|rotary_enc_inst|count_reg[6]~23\ = CARRY((\rot_enc_inst|debouncer_B|Equal0~0_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(6)) # (!\rot_enc_inst|rotary_enc_inst|count_reg[5]~21\))) # (!\rot_enc_inst|debouncer_B|Equal0~0_combout\ & 
-- (\rot_enc_inst|rotary_enc_inst|count_reg\(6) & !\rot_enc_inst|rotary_enc_inst|count_reg[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|debouncer_B|Equal0~0_combout\,
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(6),
	datad => VCC,
	cin => \rot_enc_inst|rotary_enc_inst|count_reg[5]~21\,
	combout => \rot_enc_inst|rotary_enc_inst|count_reg[6]~22_combout\,
	cout => \rot_enc_inst|rotary_enc_inst|count_reg[6]~23\);

-- Location: FF_X60_Y46_N19
\rot_enc_inst|rotary_enc_inst|count_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	d => \rot_enc_inst|rotary_enc_inst|count_reg[6]~22_combout\,
	ena => \rot_enc_inst|rotary_enc_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|rotary_enc_inst|count_reg\(6));

-- Location: LCCOMB_X60_Y46_N20
\rot_enc_inst|rotary_enc_inst|count_reg[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|rotary_enc_inst|count_reg[7]~24_combout\ = (\rot_enc_inst|debouncer_B|Equal0~0_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(7) & (\rot_enc_inst|rotary_enc_inst|count_reg[6]~23\ & VCC)) # (!\rot_enc_inst|rotary_enc_inst|count_reg\(7) 
-- & (!\rot_enc_inst|rotary_enc_inst|count_reg[6]~23\)))) # (!\rot_enc_inst|debouncer_B|Equal0~0_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(7) & (!\rot_enc_inst|rotary_enc_inst|count_reg[6]~23\)) # (!\rot_enc_inst|rotary_enc_inst|count_reg\(7) & 
-- ((\rot_enc_inst|rotary_enc_inst|count_reg[6]~23\) # (GND)))))
-- \rot_enc_inst|rotary_enc_inst|count_reg[7]~25\ = CARRY((\rot_enc_inst|debouncer_B|Equal0~0_combout\ & (!\rot_enc_inst|rotary_enc_inst|count_reg\(7) & !\rot_enc_inst|rotary_enc_inst|count_reg[6]~23\)) # (!\rot_enc_inst|debouncer_B|Equal0~0_combout\ & 
-- ((!\rot_enc_inst|rotary_enc_inst|count_reg[6]~23\) # (!\rot_enc_inst|rotary_enc_inst|count_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|debouncer_B|Equal0~0_combout\,
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(7),
	datad => VCC,
	cin => \rot_enc_inst|rotary_enc_inst|count_reg[6]~23\,
	combout => \rot_enc_inst|rotary_enc_inst|count_reg[7]~24_combout\,
	cout => \rot_enc_inst|rotary_enc_inst|count_reg[7]~25\);

-- Location: FF_X60_Y46_N21
\rot_enc_inst|rotary_enc_inst|count_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	d => \rot_enc_inst|rotary_enc_inst|count_reg[7]~24_combout\,
	ena => \rot_enc_inst|rotary_enc_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|rotary_enc_inst|count_reg\(7));

-- Location: LCCOMB_X60_Y46_N22
\rot_enc_inst|rotary_enc_inst|count_reg[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|rotary_enc_inst|count_reg[8]~26_combout\ = ((\rot_enc_inst|rotary_enc_inst|count_reg\(8) $ (\rot_enc_inst|debouncer_B|Equal0~0_combout\ $ (!\rot_enc_inst|rotary_enc_inst|count_reg[7]~25\)))) # (GND)
-- \rot_enc_inst|rotary_enc_inst|count_reg[8]~27\ = CARRY((\rot_enc_inst|rotary_enc_inst|count_reg\(8) & ((\rot_enc_inst|debouncer_B|Equal0~0_combout\) # (!\rot_enc_inst|rotary_enc_inst|count_reg[7]~25\))) # (!\rot_enc_inst|rotary_enc_inst|count_reg\(8) & 
-- (\rot_enc_inst|debouncer_B|Equal0~0_combout\ & !\rot_enc_inst|rotary_enc_inst|count_reg[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(8),
	datab => \rot_enc_inst|debouncer_B|Equal0~0_combout\,
	datad => VCC,
	cin => \rot_enc_inst|rotary_enc_inst|count_reg[7]~25\,
	combout => \rot_enc_inst|rotary_enc_inst|count_reg[8]~26_combout\,
	cout => \rot_enc_inst|rotary_enc_inst|count_reg[8]~27\);

-- Location: FF_X60_Y46_N23
\rot_enc_inst|rotary_enc_inst|count_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	d => \rot_enc_inst|rotary_enc_inst|count_reg[8]~26_combout\,
	ena => \rot_enc_inst|rotary_enc_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|rotary_enc_inst|count_reg\(8));

-- Location: LCCOMB_X60_Y46_N24
\rot_enc_inst|rotary_enc_inst|count_reg[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|rotary_enc_inst|count_reg[9]~28_combout\ = \rot_enc_inst|debouncer_B|Equal0~0_combout\ $ (\rot_enc_inst|rotary_enc_inst|count_reg[8]~27\ $ (\rot_enc_inst|rotary_enc_inst|count_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|debouncer_B|Equal0~0_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(9),
	cin => \rot_enc_inst|rotary_enc_inst|count_reg[8]~27\,
	combout => \rot_enc_inst|rotary_enc_inst|count_reg[9]~28_combout\);

-- Location: FF_X60_Y46_N25
\rot_enc_inst|rotary_enc_inst|count_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rot_enc_inst|clk_div_inst|clk_out~clkctrl_outclk\,
	d => \rot_enc_inst|rotary_enc_inst|count_reg[9]~28_combout\,
	ena => \rot_enc_inst|rotary_enc_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rot_enc_inst|rotary_enc_inst|count_reg\(9));

-- Location: LCCOMB_X60_Y47_N0
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \rot_enc_inst|rotary_enc_inst|count_reg\(7) $ (VCC)
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\rot_enc_inst|rotary_enc_inst|count_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(7),
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X60_Y47_N2
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(8) & (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\rot_enc_inst|rotary_enc_inst|count_reg\(8) & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\rot_enc_inst|rotary_enc_inst|count_reg\(8) & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(8),
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X60_Y47_N4
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(9) & (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\rot_enc_inst|rotary_enc_inst|count_reg\(9) & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\rot_enc_inst|rotary_enc_inst|count_reg\(9) & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(9),
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X60_Y47_N6
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X60_Y47_N10
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~93_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~93_combout\);

-- Location: LCCOMB_X60_Y47_N8
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~92_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(9) & \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(9),
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~92_combout\);

-- Location: LCCOMB_X60_Y47_N30
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~95_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~95_combout\);

-- Location: LCCOMB_X60_Y47_N28
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~94_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(8) & \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(8),
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~94_combout\);

-- Location: LCCOMB_X60_Y47_N12
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\);

-- Location: LCCOMB_X60_Y47_N26
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~96_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(7) & \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(7),
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~96_combout\);

-- Location: LCCOMB_X60_Y46_N28
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[30]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[30]~99_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(6) & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(6),
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[30]~99_combout\);

-- Location: LCCOMB_X60_Y46_N0
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[30]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(6) & \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(6),
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\);

-- Location: LCCOMB_X60_Y47_N16
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[30]~99_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[30]~99_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[30]~99_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[30]~98_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X60_Y47_N18
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~96_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~96_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~96_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~97_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[31]~96_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X60_Y47_N20
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~95_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~94_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~95_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~94_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~95_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~95_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[32]~94_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X60_Y47_N22
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~93_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~92_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~93_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~92_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~93_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~92_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~93_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[33]~92_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X60_Y47_N24
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X60_Y47_N14
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~166_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\rot_enc_inst|rotary_enc_inst|count_reg\(9))) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ 
-- & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(9),
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~166_combout\);

-- Location: LCCOMB_X59_Y47_N0
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~100_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~100_combout\);

-- Location: LCCOMB_X59_Y47_N18
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~101_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~101_combout\);

-- Location: LCCOMB_X59_Y47_N20
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~167_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\rot_enc_inst|rotary_enc_inst|count_reg\(8))) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ 
-- & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(8),
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~167_combout\);

-- Location: LCCOMB_X59_Y47_N22
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~168_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\rot_enc_inst|rotary_enc_inst|count_reg\(7))) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ 
-- & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(7),
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~168_combout\);

-- Location: LCCOMB_X59_Y47_N28
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~102_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~102_combout\);

-- Location: LCCOMB_X59_Y47_N26
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~104_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~104_combout\);

-- Location: LCCOMB_X60_Y46_N4
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~103_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(6) & \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(6),
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~103_combout\);

-- Location: LCCOMB_X59_Y47_N30
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[40]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[40]~106_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(5) & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(5),
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[40]~106_combout\);

-- Location: LCCOMB_X59_Y47_N4
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[40]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[40]~105_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(5) & \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(5),
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[40]~105_combout\);

-- Location: LCCOMB_X59_Y47_N6
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[40]~106_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[40]~105_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[40]~106_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[40]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[40]~106_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[40]~105_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X59_Y47_N8
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~104_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~103_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~104_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~103_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~104_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~103_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~104_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[41]~103_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X59_Y47_N10
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~168_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~102_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~168_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~102_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~168_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~168_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~102_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X59_Y47_N12
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~101_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~167_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~101_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~167_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~101_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~167_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~101_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~167_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X59_Y47_N14
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & 
-- ((((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~166_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~100_combout\))))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~166_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~100_combout\) # (GND))))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~166_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~100_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~166_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~100_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X59_Y47_N16
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X56_Y47_N24
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~166_combout\) # ((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[44]~166_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\);

-- Location: LCCOMB_X56_Y47_N0
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~107_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~107_combout\);

-- Location: LCCOMB_X56_Y47_N2
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~108_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~108_combout\);

-- Location: LCCOMB_X59_Y47_N24
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~167_combout\) # ((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[43]~167_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\);

-- Location: LCCOMB_X59_Y47_N2
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~168_combout\) # ((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[42]~168_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\);

-- Location: LCCOMB_X57_Y47_N0
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~109_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~109_combout\);

-- Location: LCCOMB_X56_Y47_N6
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~169_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(6)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(6),
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~169_combout\);

-- Location: LCCOMB_X56_Y47_N28
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~110_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~110_combout\);

-- Location: LCCOMB_X56_Y47_N30
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~111_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(5),
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~111_combout\);

-- Location: LCCOMB_X57_Y47_N10
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~112_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~112_combout\);

-- Location: LCCOMB_X57_Y47_N6
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[50]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[50]~114_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(4),
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[50]~114_combout\);

-- Location: LCCOMB_X57_Y47_N12
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[50]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[50]~113_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(4),
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[50]~113_combout\);

-- Location: LCCOMB_X56_Y47_N10
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[50]~114_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[50]~113_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[50]~114_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[50]~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[50]~114_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[50]~113_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X56_Y47_N12
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~111_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~112_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~111_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~112_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~111_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~112_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~111_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[51]~112_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X56_Y47_N14
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~169_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~110_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~169_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~110_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~169_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~169_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~110_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X56_Y47_N16
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~109_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~109_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~109_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~109_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X56_Y47_N18
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & 
-- ((((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~108_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\))))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~108_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\) # (GND))))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~108_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~108_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X56_Y47_N20
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~107_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~107_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~107_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~107_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X56_Y47_N22
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X57_Y46_N0
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~115_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~115_combout\);

-- Location: LCCOMB_X56_Y47_N8
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~151_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[55]~148_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~151_combout\);

-- Location: LCCOMB_X56_Y46_N8
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~116_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~116_combout\);

-- Location: LCCOMB_X56_Y47_N26
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[54]~149_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\);

-- Location: LCCOMB_X57_Y47_N26
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~153_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[53]~150_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~153_combout\);

-- Location: LCCOMB_X56_Y46_N2
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~117_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~117_combout\);

-- Location: LCCOMB_X56_Y47_N4
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~154_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~169_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[52]~169_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~154_combout\);

-- Location: LCCOMB_X57_Y46_N26
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~118_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~118_combout\);

-- Location: LCCOMB_X57_Y47_N16
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~119_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~119_combout\);

-- Location: LCCOMB_X57_Y47_N2
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~170_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\rot_enc_inst|rotary_enc_inst|count_reg\(5))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(5),
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~170_combout\);

-- Location: LCCOMB_X57_Y47_N20
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~121_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~121_combout\);

-- Location: LCCOMB_X57_Y47_N18
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~120_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(4),
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~120_combout\);

-- Location: LCCOMB_X57_Y46_N6
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[60]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[60]~123_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(3),
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[60]~123_combout\);

-- Location: LCCOMB_X57_Y46_N28
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[60]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[60]~122_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(3),
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[60]~122_combout\);

-- Location: LCCOMB_X56_Y46_N14
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[60]~123_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[60]~122_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[60]~123_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[60]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[60]~123_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[60]~122_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X56_Y46_N16
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~121_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~120_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~121_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~120_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~121_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~120_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~121_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[61]~120_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X56_Y46_N18
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~119_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~170_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~119_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~170_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~119_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~119_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~170_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X56_Y46_N20
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~154_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~118_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~154_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~118_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~154_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~118_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~154_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~118_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X56_Y46_N22
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & 
-- ((((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~153_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~117_combout\))))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~153_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~117_combout\) # (GND))))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~153_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~117_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~153_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~117_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X56_Y46_N24
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~116_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~116_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~116_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~116_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X56_Y46_N26
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & 
-- ((((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~115_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~151_combout\))))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~115_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~151_combout\) # (GND))))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~115_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~151_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~115_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~151_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X56_Y46_N28
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X57_Y46_N8
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~124_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~124_combout\);

-- Location: LCCOMB_X57_Y46_N14
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~155_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~151_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[66]~151_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~155_combout\);

-- Location: LCCOMB_X56_Y46_N0
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~156_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~156_combout\);

-- Location: LCCOMB_X56_Y46_N4
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~125_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~125_combout\);

-- Location: LCCOMB_X56_Y46_N30
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~126_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~126_combout\);

-- Location: LCCOMB_X56_Y46_N10
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~153_combout\) # ((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[64]~153_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\);

-- Location: LCCOMB_X57_Y46_N2
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~127_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~127_combout\);

-- Location: LCCOMB_X57_Y46_N24
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~158_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~154_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[63]~154_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~158_combout\);

-- Location: LCCOMB_X57_Y47_N14
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~128_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~128_combout\);

-- Location: LCCOMB_X57_Y47_N28
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~159_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~170_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[62]~170_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~159_combout\);

-- Location: LCCOMB_X57_Y47_N4
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~171_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\rot_enc_inst|rotary_enc_inst|count_reg\(4))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(4),
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~171_combout\);

-- Location: LCCOMB_X57_Y47_N24
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~129_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~129_combout\);

-- Location: LCCOMB_X57_Y46_N12
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~130_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(3),
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~130_combout\);

-- Location: LCCOMB_X57_Y46_N30
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~131_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~131_combout\);

-- Location: LCCOMB_X57_Y46_N16
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[70]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[70]~132_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(2),
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[70]~132_combout\);

-- Location: LCCOMB_X57_Y46_N10
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[70]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[70]~133_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(2),
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[70]~133_combout\);

-- Location: LCCOMB_X58_Y46_N10
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[70]~132_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[70]~133_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[70]~132_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[70]~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[70]~132_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[70]~133_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X58_Y46_N12
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~130_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~131_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~130_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~131_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~130_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~131_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~130_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[71]~131_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X58_Y46_N14
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~171_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~129_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~171_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~129_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~171_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~171_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~129_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X58_Y46_N16
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~128_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~159_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~128_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~159_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~128_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~159_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~128_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~159_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X58_Y46_N18
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & 
-- ((((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~127_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~158_combout\))))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~127_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~158_combout\) # (GND))))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~127_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~158_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~127_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~158_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\);

-- Location: LCCOMB_X58_Y46_N20
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~126_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~126_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~126_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~126_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\);

-- Location: LCCOMB_X58_Y46_N22
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & 
-- ((((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~156_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~125_combout\))))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~156_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~125_combout\) # (GND))))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~156_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~125_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~156_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~125_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\);

-- Location: LCCOMB_X58_Y46_N24
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~124_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~155_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~124_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~155_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~124_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~155_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~124_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~155_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\);

-- Location: LCCOMB_X58_Y46_N26
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ = \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\);

-- Location: LCCOMB_X57_Y46_N4
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~143_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(2),
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~143_combout\);

-- Location: LCCOMB_X58_Y46_N6
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~144_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~144_combout\);

-- Location: LCCOMB_X59_Y46_N26
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[80]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[80]~135_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(1),
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[80]~135_combout\);

-- Location: LCCOMB_X59_Y46_N0
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[80]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[80]~134_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(1),
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[80]~134_combout\);

-- Location: LCCOMB_X59_Y46_N6
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[80]~135_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[80]~134_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[80]~135_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[80]~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[80]~135_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[80]~134_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X59_Y46_N8
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~143_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~144_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~143_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~144_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~143_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~144_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~143_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~144_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X58_Y46_N0
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[88]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[88]~136_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[88]~136_combout\);

-- Location: LCCOMB_X57_Y46_N18
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[88]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[88]~160_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~155_combout\) # ((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[77]~155_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[88]~160_combout\);

-- Location: LCCOMB_X58_Y46_N2
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[87]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[87]~137_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[87]~137_combout\);

-- Location: LCCOMB_X56_Y46_N12
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[87]~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[87]~161_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~156_combout\) # ((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[76]~156_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[87]~161_combout\);

-- Location: LCCOMB_X56_Y46_N6
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[86]~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[86]~162_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[75]~157_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[86]~162_combout\);

-- Location: LCCOMB_X58_Y46_N4
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[86]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[86]~138_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[86]~138_combout\);

-- Location: LCCOMB_X57_Y46_N20
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[85]~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[85]~163_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~158_combout\) # ((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[74]~158_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[85]~163_combout\);

-- Location: LCCOMB_X58_Y46_N30
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[85]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[85]~139_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[85]~139_combout\);

-- Location: LCCOMB_X58_Y46_N8
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[84]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[84]~140_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[84]~140_combout\);

-- Location: LCCOMB_X57_Y47_N30
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[84]~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[84]~164_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~159_combout\) # ((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[73]~159_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[84]~164_combout\);

-- Location: LCCOMB_X57_Y47_N8
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[83]~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[83]~165_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~171_combout\) # ((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[72]~171_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[83]~165_combout\);

-- Location: LCCOMB_X58_Y46_N28
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[83]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[83]~141_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[83]~141_combout\);

-- Location: LCCOMB_X57_Y46_N22
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~172_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\rot_enc_inst|rotary_enc_inst|count_reg\(3))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(3),
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~172_combout\);

-- Location: LCCOMB_X59_Y46_N4
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~142_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~142_combout\);

-- Location: LCCOMB_X59_Y46_N10
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~172_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~142_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~172_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~142_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~172_combout\) # (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~172_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~142_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X59_Y46_N12
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[83]~165_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[83]~141_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[83]~165_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[83]~141_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y46_N14
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[84]~140_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[84]~164_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[84]~140_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[84]~164_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\);

-- Location: LCCOMB_X59_Y46_N16
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[85]~163_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[85]~139_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[85]~163_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[85]~139_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\);

-- Location: LCCOMB_X59_Y46_N18
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[86]~162_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[86]~138_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[86]~162_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[86]~138_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~11_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\);

-- Location: LCCOMB_X59_Y46_N20
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[87]~137_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[87]~161_combout\ & !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[87]~137_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[87]~161_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15_cout\);

-- Location: LCCOMB_X59_Y46_N22
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17_cout\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[88]~136_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[88]~160_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[88]~136_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[88]~160_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~15_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17_cout\);

-- Location: LCCOMB_X59_Y46_N24
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ = !\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~17_cout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\);

-- Location: LCCOMB_X59_Y46_N28
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~143_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~144_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~143_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[81]~144_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\);

-- Location: LCCOMB_X59_Y46_N2
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\rot_enc_inst|rotary_enc_inst|count_reg\(1))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(1),
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\);

-- Location: LCCOMB_X59_Y46_N30
\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~172_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~142_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~172_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[82]~142_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\);

-- Location: LCCOMB_X63_Y50_N0
\rot_enc_inst|seven_seg_inst|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux20~0_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\ & (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\ & (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\ $ 
-- (((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(0),
	combout => \rot_enc_inst|seven_seg_inst|Mux20~0_combout\);

-- Location: LCCOMB_X63_Y50_N2
\rot_enc_inst|seven_seg_inst|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux19~0_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\ & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\ $ (\rot_enc_inst|rotary_enc_inst|count_reg\(0))))) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\ & (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(0),
	combout => \rot_enc_inst|seven_seg_inst|Mux19~0_combout\);

-- Location: LCCOMB_X63_Y50_N4
\rot_enc_inst|seven_seg_inst|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux18~0_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\ & (((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\ & (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\) # (!\rot_enc_inst|rotary_enc_inst|count_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(0),
	combout => \rot_enc_inst|seven_seg_inst|Mux18~0_combout\);

-- Location: LCCOMB_X63_Y50_N6
\rot_enc_inst|seven_seg_inst|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux17~0_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\ & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(0))))) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\ $ (((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(0),
	combout => \rot_enc_inst|seven_seg_inst|Mux17~0_combout\);

-- Location: LCCOMB_X63_Y50_N8
\rot_enc_inst|seven_seg_inst|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux16~0_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(0)) # ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\))) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(0),
	combout => \rot_enc_inst|seven_seg_inst|Mux16~0_combout\);

-- Location: LCCOMB_X63_Y50_N26
\rot_enc_inst|seven_seg_inst|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux15~0_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\ & ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(0))))) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\) # ((!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(0),
	combout => \rot_enc_inst|seven_seg_inst|Mux15~0_combout\);

-- Location: LCCOMB_X63_Y50_N12
\rot_enc_inst|seven_seg_inst|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux14~0_combout\ = (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\ & (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\ & 
-- ((!\rot_enc_inst|rotary_enc_inst|count_reg\(0)) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\)))) # (!\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\ $ ((\rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[92]~146_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[91]~145_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod1|auto_generated|divider|divider|StageOut[93]~147_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(0),
	combout => \rot_enc_inst|seven_seg_inst|Mux14~0_combout\);

-- Location: LCCOMB_X56_Y44_N20
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \rot_enc_inst|rotary_enc_inst|count_reg\(7) $ (VCC)
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\rot_enc_inst|rotary_enc_inst|count_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(7),
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X56_Y44_N22
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(8) & (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\rot_enc_inst|rotary_enc_inst|count_reg\(8) & (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\rot_enc_inst|rotary_enc_inst|count_reg\(8) & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(8),
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X56_Y44_N24
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(9) & (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\rot_enc_inst|rotary_enc_inst|count_reg\(9) & (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\rot_enc_inst|rotary_enc_inst|count_reg\(9) & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(9),
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X56_Y44_N26
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X56_Y44_N2
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\ = (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\);

-- Location: LCCOMB_X56_Y44_N16
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(9),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\);

-- Location: LCCOMB_X56_Y44_N14
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(8),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\);

-- Location: LCCOMB_X56_Y44_N0
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\ = (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\);

-- Location: LCCOMB_X56_Y44_N18
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(7),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\);

-- Location: LCCOMB_X56_Y44_N28
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ = (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\);

-- Location: LCCOMB_X56_Y44_N30
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(6) & \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(6),
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\);

-- Location: LCCOMB_X60_Y45_N8
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[15]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(6),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X56_Y44_N4
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\)))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[15]~62_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X56_Y44_N6
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\)))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\ & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~60_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[16]~61_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X56_Y44_N8
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~58_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[17]~59_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X56_Y44_N10
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\ & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[18]~57_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[18]~56_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X56_Y44_N12
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X57_Y44_N10
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[23]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(8)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(8),
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\);

-- Location: LCCOMB_X57_Y44_N24
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[23]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X57_Y44_N2
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X57_Y44_N28
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\rot_enc_inst|rotary_enc_inst|count_reg\(7))) # (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ 
-- & ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(7),
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\);

-- Location: LCCOMB_X57_Y44_N30
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\);

-- Location: LCCOMB_X57_Y44_N4
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(6) & \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(6),
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X57_Y44_N26
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\ = (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(5),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\);

-- Location: LCCOMB_X57_Y44_N8
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[20]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(5),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\);

-- Location: LCCOMB_X57_Y44_N12
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\)))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[20]~69_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[20]~68_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X57_Y44_N14
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\)))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~67_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X57_Y44_N16
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X57_Y44_N18
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[23]~98_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X57_Y44_N20
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X54_Y41_N14
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (GND)
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X54_Y41_N16
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X54_Y41_N18
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC)) # (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X54_Y41_N20
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X54_Y41_N22
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY(!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X54_Y41_N24
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY(!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X54_Y41_N26
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X55_Y41_N0
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[66]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[66]~60_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[66]~60_combout\);

-- Location: LCCOMB_X55_Y41_N26
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[65]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[65]~61_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[65]~61_combout\);

-- Location: LCCOMB_X56_Y41_N2
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[64]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[64]~62_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[64]~62_combout\);

-- Location: LCCOMB_X54_Y41_N0
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\ = (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\);

-- Location: LCCOMB_X54_Y41_N10
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~64_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~64_combout\);

-- Location: LCCOMB_X54_Y41_N12
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\);

-- Location: LCCOMB_X55_Y41_N28
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~65_combout\ = (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~65_combout\);

-- Location: LCCOMB_X54_Y41_N8
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~68_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~68_combout\);

-- Location: LCCOMB_X54_Y41_N6
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\);

-- Location: LCCOMB_X57_Y44_N0
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[28]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\) # ((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\);

-- Location: LCCOMB_X57_Y44_N6
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[28]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\);

-- Location: LCCOMB_X57_Y44_N22
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(6)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(6),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\);

-- Location: LCCOMB_X58_Y44_N0
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\ = (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\);

-- Location: LCCOMB_X58_Y44_N30
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\);

-- Location: LCCOMB_X58_Y44_N28
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(5),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\);

-- Location: LCCOMB_X58_Y44_N26
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[25]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\ = (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(4),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\);

-- Location: LCCOMB_X58_Y44_N16
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[25]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(4),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X58_Y44_N2
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\)))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[25]~75_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X58_Y44_N4
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\)))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\ & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~73_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[26]~72_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X58_Y44_N6
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~71_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X58_Y44_N8
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\ & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[28]~94_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[28]~70_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X58_Y44_N10
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X56_Y41_N20
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[60]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[60]~69_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[60]~69_combout\);

-- Location: LCCOMB_X56_Y41_N24
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X56_Y41_N6
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[60]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[60]~70_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[60]~70_combout\);

-- Location: LCCOMB_X55_Y41_N4
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[60]~69_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[60]~70_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[60]~69_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[60]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[60]~69_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[60]~70_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X55_Y41_N6
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~68_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~68_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~68_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\ & !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~68_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X55_Y41_N8
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~65_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~65_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[62]~65_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X55_Y41_N10
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~64_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~64_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~64_combout\ & !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~63_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[63]~64_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X55_Y41_N12
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[64]~62_combout\ & ((GND) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\))) # (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[64]~62_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ $ (GND)))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[64]~62_combout\) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[64]~62_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X55_Y41_N14
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[65]~61_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & VCC)) # (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[65]~61_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[65]~61_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[65]~61_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X55_Y41_N16
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[66]~60_combout\ & ((GND) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\))) # (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[66]~60_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ $ (GND)))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[66]~60_combout\) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[66]~60_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X55_Y41_N18
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X55_Y41_N30
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~71_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~71_combout\);

-- Location: LCCOMB_X55_Y41_N2
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~94_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~94_combout\);

-- Location: LCCOMB_X54_Y41_N2
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~95_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~95_combout\);

-- Location: LCCOMB_X55_Y41_N24
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~72_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~72_combout\);

-- Location: LCCOMB_X56_Y40_N2
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~73_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~73_combout\);

-- Location: LCCOMB_X56_Y41_N0
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~96_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~96_combout\);

-- Location: LCCOMB_X56_Y40_N20
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~74_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~74_combout\);

-- Location: LCCOMB_X54_Y41_N4
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~104_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~104_combout\);

-- Location: LCCOMB_X54_Y41_N28
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~105_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~105_combout\);

-- Location: LCCOMB_X55_Y40_N8
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~75_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~75_combout\);

-- Location: LCCOMB_X54_Y41_N30
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~106_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~106_combout\);

-- Location: LCCOMB_X56_Y40_N22
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~76_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~76_combout\);

-- Location: LCCOMB_X56_Y41_N28
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\);

-- Location: LCCOMB_X56_Y40_N0
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~77_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~77_combout\);

-- Location: LCCOMB_X58_Y44_N20
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[33]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\);

-- Location: LCCOMB_X58_Y44_N18
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[33]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\) # ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\);

-- Location: LCCOMB_X58_Y44_N12
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(5)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(5),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\);

-- Location: LCCOMB_X58_Y43_N24
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\);

-- Location: LCCOMB_X58_Y43_N26
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(4),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\);

-- Location: LCCOMB_X58_Y43_N28
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X58_Y43_N30
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[30]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(3),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\);

-- Location: LCCOMB_X58_Y43_N8
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[30]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\ = (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(3),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\);

-- Location: LCCOMB_X58_Y43_N10
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\)))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[30]~80_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[30]~81_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X58_Y43_N12
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\)))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\ & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~78_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X58_Y43_N14
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~77_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X58_Y43_N16
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\ & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[33]~76_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[33]~95_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X58_Y43_N18
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X56_Y40_N24
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ = !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\);

-- Location: LCCOMB_X55_Y40_N10
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[70]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[70]~79_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[70]~79_combout\);

-- Location: LCCOMB_X56_Y40_N10
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[70]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[70]~78_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[70]~78_combout\);

-- Location: LCCOMB_X55_Y40_N14
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[70]~79_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[70]~78_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[70]~79_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[70]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[70]~79_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[70]~78_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X55_Y40_N16
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~77_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~77_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~77_combout\ & !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~77_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X55_Y40_N18
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~106_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~76_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~106_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~76_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~106_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~106_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~76_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X55_Y40_N20
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~105_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~75_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~105_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~75_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~105_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~75_combout\ & !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~105_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~75_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X55_Y40_N22
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & 
-- ((((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~74_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~104_combout\))))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~74_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~104_combout\) # (GND))))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~74_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~104_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~74_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~104_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\);

-- Location: LCCOMB_X55_Y40_N24
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~73_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~96_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~73_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~96_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~73_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~96_combout\ & !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~73_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~96_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\);

-- Location: LCCOMB_X55_Y40_N26
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & 
-- ((((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~95_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~72_combout\))))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~95_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~72_combout\) # (GND))))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~95_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~72_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~95_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~72_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\);

-- Location: LCCOMB_X55_Y40_N28
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~71_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~94_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~71_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~94_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~71_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~94_combout\ & !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~71_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~94_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\);

-- Location: LCCOMB_X55_Y40_N30
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ = \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\);

-- Location: LCCOMB_X56_Y40_N8
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~103_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\) # ((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[71]~107_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~103_combout\);

-- Location: LCCOMB_X56_Y40_N14
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~86_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~86_combout\);

-- Location: LCCOMB_X55_Y40_N4
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[88]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[88]~80_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[88]~80_combout\);

-- Location: LCCOMB_X55_Y41_N20
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[88]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[88]~97_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~94_combout\) # ((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[77]~94_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[88]~97_combout\);

-- Location: LCCOMB_X55_Y40_N6
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[87]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[87]~81_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[87]~81_combout\);

-- Location: LCCOMB_X56_Y41_N10
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[87]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[87]~98_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~95_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[76]~95_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[87]~98_combout\);

-- Location: LCCOMB_X56_Y40_N16
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[86]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[86]~99_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~96_combout\) # ((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[75]~96_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[86]~99_combout\);

-- Location: LCCOMB_X56_Y40_N28
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[86]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[86]~82_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[86]~82_combout\);

-- Location: LCCOMB_X56_Y40_N26
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[85]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[85]~100_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~104_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[74]~104_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[85]~100_combout\);

-- Location: LCCOMB_X55_Y40_N0
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[85]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[85]~83_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[85]~83_combout\);

-- Location: LCCOMB_X56_Y40_N12
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[84]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[84]~101_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~105_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[73]~105_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[84]~101_combout\);

-- Location: LCCOMB_X54_Y40_N10
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[84]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[84]~84_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[84]~84_combout\);

-- Location: LCCOMB_X55_Y40_N2
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[83]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[83]~85_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[83]~85_combout\);

-- Location: LCCOMB_X56_Y40_N30
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[83]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[83]~102_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~106_combout\) # ((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[72]~106_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[83]~102_combout\);

-- Location: LCCOMB_X55_Y40_N12
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~87_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~87_combout\);

-- Location: LCCOMB_X56_Y40_N18
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~108_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~108_combout\);

-- Location: LCCOMB_X58_Y43_N0
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[38]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\) # ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\);

-- Location: LCCOMB_X58_Y43_N4
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[38]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\);

-- Location: LCCOMB_X58_Y43_N6
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\);

-- Location: LCCOMB_X58_Y43_N20
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(4)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(4),
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\);

-- Location: LCCOMB_X59_Y43_N2
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ = (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\);

-- Location: LCCOMB_X59_Y43_N0
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \rot_enc_inst|rotary_enc_inst|count_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(3),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\);

-- Location: LCCOMB_X60_Y43_N2
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[35]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(2) & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(2),
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X60_Y43_N16
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[35]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(2) & \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(2),
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\);

-- Location: LCCOMB_X59_Y43_N6
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\)))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[35]~86_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X59_Y43_N8
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\)))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\ & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~85_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[36]~84_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X59_Y43_N10
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- (((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~83_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X59_Y43_N12
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\ & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[38]~96_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[38]~82_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y43_N14
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X54_Y40_N28
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~88_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~88_combout\);

-- Location: LCCOMB_X54_Y40_N24
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[0]~18_combout\ = !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[0]~18_combout\);

-- Location: LCCOMB_X54_Y40_N22
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~89_combout\ = (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[0]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_8_result_int[0]~18_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~89_combout\);

-- Location: LCCOMB_X57_Y40_N8
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ = (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~88_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~89_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~88_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~88_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~89_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\);

-- Location: LCCOMB_X57_Y40_N10
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~87_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~108_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ & (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~87_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~108_combout\)))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~87_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~108_combout\ & !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~87_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~108_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\);

-- Location: LCCOMB_X57_Y40_N12
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ & 
-- (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~103_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~86_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ & ((((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~103_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~86_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~103_combout\) # (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~103_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~86_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\);

-- Location: LCCOMB_X57_Y40_N14
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[83]~85_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[83]~102_combout\ & !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[83]~85_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[83]~102_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\);

-- Location: LCCOMB_X57_Y40_N16
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~11_cout\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[84]~101_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[84]~84_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[84]~101_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[84]~84_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~9_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~11_cout\);

-- Location: LCCOMB_X57_Y40_N18
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~13_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[85]~100_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[85]~83_combout\ & !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[85]~100_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[85]~83_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~11_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~13_cout\);

-- Location: LCCOMB_X57_Y40_N20
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~15_cout\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[86]~99_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[86]~82_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[86]~99_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[86]~82_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~13_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~15_cout\);

-- Location: LCCOMB_X57_Y40_N22
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~17_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[87]~81_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[87]~98_combout\ & !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[87]~81_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[87]~98_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~15_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~17_cout\);

-- Location: LCCOMB_X57_Y40_N24
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~19_cout\ = CARRY((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[88]~80_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[88]~97_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[88]~80_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[88]~97_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~17_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~19_cout\);

-- Location: LCCOMB_X57_Y40_N26
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ = !\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~19_cout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\);

-- Location: LCCOMB_X57_Y40_N28
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~103_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~86_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~103_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[82]~86_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\);

-- Location: LCCOMB_X57_Y40_N4
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~88_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~89_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~88_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[80]~89_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\);

-- Location: LCCOMB_X57_Y40_N30
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~87_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~108_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~87_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[81]~108_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\);

-- Location: LCCOMB_X58_Y43_N2
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[43]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\) # ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[37]~102_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\);

-- Location: LCCOMB_X59_Y43_N28
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[43]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\ = (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\);

-- Location: LCCOMB_X59_Y43_N30
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[42]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(3)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(3),
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\);

-- Location: LCCOMB_X59_Y43_N16
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[42]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\ = (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\);

-- Location: LCCOMB_X60_Y43_N20
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[41]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(2) & \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(2),
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\);

-- Location: LCCOMB_X59_Y43_N4
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[41]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\ = (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\);

-- Location: LCCOMB_X58_Y44_N24
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[40]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(1) & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(1),
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\);

-- Location: LCCOMB_X58_Y44_N22
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[40]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(1) & \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(1),
	datac => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\);

-- Location: LCCOMB_X59_Y43_N18
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[40]~93_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[40]~92_combout\,
	datad => VCC,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X59_Y43_N20
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\ & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[41]~90_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[41]~91_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X59_Y43_N22
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\) # (\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[42]~103_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[42]~89_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\);

-- Location: LCCOMB_X59_Y43_N24
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\ & !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[43]~97_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|StageOut[43]~88_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y43_N26
\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCCOMB_X57_Y40_N0
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ = !\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\);

-- Location: LCCOMB_X57_Y40_N2
\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & 
-- ((!\rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))) # (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\);

-- Location: LCCOMB_X65_Y49_N0
\rot_enc_inst|seven_seg_inst|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux13~0_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\ & (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\)) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\ & (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\ $ 
-- (((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\ & \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mux13~0_combout\);

-- Location: LCCOMB_X65_Y49_N2
\rot_enc_inst|seven_seg_inst|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux12~0_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\ & ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\)))) # (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\ & (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\ $ 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mux12~0_combout\);

-- Location: LCCOMB_X65_Y49_N4
\rot_enc_inst|seven_seg_inst|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux11~0_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\ & (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\)) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\ & (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mux11~0_combout\);

-- Location: LCCOMB_X65_Y49_N22
\rot_enc_inst|seven_seg_inst|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux10~0_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\ & ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\ & \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\ & (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\ $ 
-- (((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\ & \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mux10~0_combout\);

-- Location: LCCOMB_X65_Y49_N24
\rot_enc_inst|seven_seg_inst|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux9~0_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\) # ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\)) # (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mux9~0_combout\);

-- Location: LCCOMB_X65_Y49_N10
\rot_enc_inst|seven_seg_inst|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux8~0_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\ & ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\ & \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\ & ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\) # 
-- ((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\ & \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mux8~0_combout\);

-- Location: LCCOMB_X65_Y49_N12
\rot_enc_inst|seven_seg_inst|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux7~0_combout\ = (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\ & (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\ & 
-- ((!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\) # (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\ & (\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\ $ 
-- ((\rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[93]~93_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[91]~91_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[92]~92_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Mod0|auto_generated|divider|divider|StageOut[90]~90_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mux7~0_combout\);

-- Location: LCCOMB_X61_Y45_N0
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \rot_enc_inst|rotary_enc_inst|count_reg\(5) $ (VCC)
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\rot_enc_inst|rotary_enc_inst|count_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(5),
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X61_Y45_N2
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(6) & (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # 
-- (!\rot_enc_inst|rotary_enc_inst|count_reg\(6) & (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\rot_enc_inst|rotary_enc_inst|count_reg\(6) & !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(6),
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X61_Y45_N4
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(7) & ((GND) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) 
-- # (!\rot_enc_inst|rotary_enc_inst|count_reg\(7) & (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\rot_enc_inst|rotary_enc_inst|count_reg\(7)) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(7),
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X61_Y45_N6
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(8) & (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # 
-- (!\rot_enc_inst|rotary_enc_inst|count_reg\(8) & ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\rot_enc_inst|rotary_enc_inst|count_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(8),
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X61_Y45_N8
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(9) & (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # 
-- (!\rot_enc_inst|rotary_enc_inst|count_reg\(9) & (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\rot_enc_inst|rotary_enc_inst|count_reg\(9) & !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(9),
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X61_Y45_N10
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X62_Y45_N30
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[54]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(9) & \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(9),
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\);

-- Location: LCCOMB_X61_Y45_N28
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[54]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\);

-- Location: LCCOMB_X61_Y45_N22
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\);

-- Location: LCCOMB_X62_Y45_N16
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(8) & \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(8),
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\);

-- Location: LCCOMB_X61_Y45_N16
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(7) & \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(7),
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\);

-- Location: LCCOMB_X61_Y45_N18
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\);

-- Location: LCCOMB_X61_Y45_N12
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\);

-- Location: LCCOMB_X62_Y45_N18
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(6) & \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(6),
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\);

-- Location: LCCOMB_X61_Y45_N30
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\);

-- Location: LCCOMB_X62_Y45_N28
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(5) & \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(5),
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\);

-- Location: LCCOMB_X62_Y45_N22
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[49]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(4) & \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(4),
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\);

-- Location: LCCOMB_X62_Y45_N24
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[49]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(4) & !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(4),
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\);

-- Location: LCCOMB_X62_Y45_N0
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\)))
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[49]~64_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[49]~65_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X62_Y45_N2
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\) # (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\)))
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\ & !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~63_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[50]~62_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X62_Y45_N4
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & 
-- ((((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\) # (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\))))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\) # (GND))))
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~61_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[51]~60_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X62_Y45_N6
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ & 
-- (((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ & (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\ & ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\)) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~58_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[52]~59_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X62_Y45_N8
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & 
-- (((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\) # (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\) # (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~57_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[53]~56_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X62_Y45_N10
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\ & !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[54]~54_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[54]~55_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X62_Y45_N12
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X64_Y45_N30
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\ = (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\);

-- Location: LCCOMB_X61_Y45_N26
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\rot_enc_inst|rotary_enc_inst|count_reg\(7))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(7),
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\);

-- Location: LCCOMB_X64_Y45_N24
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ = (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\);

-- Location: LCCOMB_X64_Y45_N28
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\rot_enc_inst|rotary_enc_inst|count_reg\(6))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(6),
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\);

-- Location: LCCOMB_X64_Y45_N22
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(5)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(5),
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\);

-- Location: LCCOMB_X64_Y45_N18
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\);

-- Location: LCCOMB_X67_Y45_N28
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\);

-- Location: LCCOMB_X67_Y45_N2
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(4) & \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(4),
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\);

-- Location: LCCOMB_X67_Y45_N18
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[48]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(3) & !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(3),
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\);

-- Location: LCCOMB_X67_Y45_N24
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[48]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(3) & \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(3),
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\);

-- Location: LCCOMB_X67_Y45_N8
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[48]~74_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[48]~73_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X67_Y45_N4
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[57]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\);

-- Location: LCCOMB_X67_Y45_N22
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[57]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(3) & \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(3),
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\);

-- Location: LCCOMB_X64_Y45_N0
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\)))
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[57]~75_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[57]~72_combout\,
	datad => VCC,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X64_Y45_N2
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & 
-- (((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\) # (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\)))
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\ & !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~71_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[58]~70_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X64_Y45_N4
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & 
-- ((((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) # (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\))))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\) # (GND))))
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~69_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X64_Y45_N6
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ & 
-- (((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ & (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\ & ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\)) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~68_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X64_Y45_N8
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & 
-- (((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\) # (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\)))))
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\) # (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~67_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X61_Y45_N24
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[62]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(8)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datab => \rot_enc_inst|rotary_enc_inst|count_reg\(8),
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\);

-- Location: LCCOMB_X62_Y45_N26
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[62]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\);

-- Location: LCCOMB_X64_Y45_N10
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\ & !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[62]~88_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[62]~66_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\);

-- Location: LCCOMB_X64_Y45_N12
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\);

-- Location: LCCOMB_X63_Y45_N16
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[70]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\);

-- Location: LCCOMB_X64_Y45_N14
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[70]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\) # ((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[61]~89_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\);

-- Location: LCCOMB_X63_Y45_N26
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[69]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\ = (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\);

-- Location: LCCOMB_X64_Y45_N16
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[69]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\) # ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[60]~90_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\);

-- Location: LCCOMB_X64_Y45_N20
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[68]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\);

-- Location: LCCOMB_X64_Y45_N26
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[68]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\) # ((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[59]~91_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\);

-- Location: LCCOMB_X67_Y45_N12
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[67]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\rot_enc_inst|rotary_enc_inst|count_reg\(4))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(4),
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\);

-- Location: LCCOMB_X63_Y45_N28
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[67]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\ = (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\);

-- Location: LCCOMB_X67_Y45_N14
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[66]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\rot_enc_inst|rotary_enc_inst|count_reg\(3)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \rot_enc_inst|rotary_enc_inst|count_reg\(3),
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\);

-- Location: LCCOMB_X63_Y45_N22
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[66]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\);

-- Location: LCCOMB_X63_Y45_N20
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[56]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(2) & !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(2),
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\);

-- Location: LCCOMB_X63_Y45_N18
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[56]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(2) & \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|rotary_enc_inst|count_reg\(2),
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\);

-- Location: LCCOMB_X63_Y45_N24
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[56]~83_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[56]~82_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\);

-- Location: LCCOMB_X63_Y45_N30
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[65]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\ = (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\);

-- Location: LCCOMB_X63_Y45_N0
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[65]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\ = (\rot_enc_inst|rotary_enc_inst|count_reg\(2) & \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|rotary_enc_inst|count_reg\(2),
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\);

-- Location: LCCOMB_X63_Y45_N2
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ = CARRY((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[65]~84_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[65]~81_combout\,
	datad => VCC,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\);

-- Location: LCCOMB_X63_Y45_N4
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\ & !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[66]~93_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[66]~80_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\);

-- Location: LCCOMB_X63_Y45_N6
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ = CARRY((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\) # 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[67]~92_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[67]~79_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\);

-- Location: LCCOMB_X63_Y45_N8
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ = CARRY(((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\)) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[68]~78_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[68]~87_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\);

-- Location: LCCOMB_X63_Y45_N10
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\) # (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[69]~77_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[69]~86_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\);

-- Location: LCCOMB_X63_Y45_N12
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ = CARRY((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\ & !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[70]~76_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|StageOut[70]~85_combout\,
	datad => VCC,
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\,
	cout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\);

-- Location: LCCOMB_X63_Y45_N14
\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ = \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\,
	combout => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\);

-- Location: LCCOMB_X67_Y45_N30
\rot_enc_inst|seven_seg_inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux6~0_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ 
-- (((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y45_N0
\rot_enc_inst|seven_seg_inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux5~0_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ $ (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mux5~0_combout\);

-- Location: LCCOMB_X67_Y45_N10
\rot_enc_inst|seven_seg_inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux4~0_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y45_N20
\rot_enc_inst|seven_seg_inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux3~0_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ 
-- (((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & 
-- !\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y45_N6
\rot_enc_inst|seven_seg_inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux2~0_combout\ = ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- ((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y45_N16
\rot_enc_inst|seven_seg_inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux1~0_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)))) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & 
-- ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ $ (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)) # 
-- (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y45_N26
\rot_enc_inst|seven_seg_inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rot_enc_inst|seven_seg_inst|Mux0~0_combout\ = (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ $ 
-- (((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))) # (!\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & 
-- (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\) # 
-- (\rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \rot_enc_inst|seven_seg_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \rot_enc_inst|seven_seg_inst|Mux0~0_combout\);

-- Location: IOIBUF_X20_Y39_N1
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

-- Location: IOIBUF_X22_Y39_N15
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

-- Location: IOIBUF_X29_Y39_N1
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

-- Location: IOIBUF_X34_Y39_N29
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

-- Location: IOIBUF_X26_Y39_N8
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

-- Location: IOIBUF_X0_Y37_N22
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

-- Location: IOIBUF_X34_Y39_N22
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

-- Location: IOIBUF_X0_Y23_N8
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

-- Location: IOIBUF_X24_Y39_N8
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

-- Location: IOIBUF_X31_Y0_N22
\GPIO[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(0),
	o => \GPIO[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\GPIO[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(1),
	o => \GPIO[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N29
\GPIO[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(2),
	o => \GPIO[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\GPIO[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(3),
	o => \GPIO[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\GPIO[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(4),
	o => \GPIO[4]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\GPIO[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(5),
	o => \GPIO[5]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\GPIO[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(6),
	o => \GPIO[6]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\GPIO[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(7),
	o => \GPIO[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\GPIO[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(10),
	o => \GPIO[10]~input_o\);

-- Location: IOIBUF_X54_Y0_N29
\GPIO[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(11),
	o => \GPIO[11]~input_o\);

-- Location: IOIBUF_X51_Y0_N22
\GPIO[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(12),
	o => \GPIO[12]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\GPIO[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(13),
	o => \GPIO[13]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\GPIO[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(14),
	o => \GPIO[14]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\GPIO[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(15),
	o => \GPIO[15]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\GPIO[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(16),
	o => \GPIO[16]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\GPIO[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(17),
	o => \GPIO[17]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\GPIO[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(18),
	o => \GPIO[18]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\GPIO[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(19),
	o => \GPIO[19]~input_o\);

-- Location: IOIBUF_X38_Y0_N15
\GPIO[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(20),
	o => \GPIO[20]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\GPIO[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(21),
	o => \GPIO[21]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\GPIO[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(22),
	o => \GPIO[22]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\GPIO[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(23),
	o => \GPIO[23]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\GPIO[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(24),
	o => \GPIO[24]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\GPIO[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(25),
	o => \GPIO[25]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\GPIO[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(26),
	o => \GPIO[26]~input_o\);

-- Location: IOIBUF_X20_Y0_N29
\GPIO[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(27),
	o => \GPIO[27]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\GPIO[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(28),
	o => \GPIO[28]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\GPIO[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(29),
	o => \GPIO[29]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\GPIO[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(30),
	o => \GPIO[30]~input_o\);

-- Location: IOIBUF_X24_Y0_N15
\GPIO[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(31),
	o => \GPIO[31]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\GPIO[32]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(32),
	o => \GPIO[32]~input_o\);

-- Location: IOIBUF_X24_Y0_N22
\GPIO[33]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(33),
	o => \GPIO[33]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\GPIO[34]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(34),
	o => \GPIO[34]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\GPIO[35]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(35),
	o => \GPIO[35]~input_o\);

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

GPIO(0) <= \GPIO[0]~output_o\;

GPIO(1) <= \GPIO[1]~output_o\;

GPIO(2) <= \GPIO[2]~output_o\;

GPIO(3) <= \GPIO[3]~output_o\;

GPIO(4) <= \GPIO[4]~output_o\;

GPIO(5) <= \GPIO[5]~output_o\;

GPIO(6) <= \GPIO[6]~output_o\;

GPIO(7) <= \GPIO[7]~output_o\;

GPIO(10) <= \GPIO[10]~output_o\;

GPIO(11) <= \GPIO[11]~output_o\;

GPIO(12) <= \GPIO[12]~output_o\;

GPIO(13) <= \GPIO[13]~output_o\;

GPIO(14) <= \GPIO[14]~output_o\;

GPIO(15) <= \GPIO[15]~output_o\;

GPIO(16) <= \GPIO[16]~output_o\;

GPIO(17) <= \GPIO[17]~output_o\;

GPIO(18) <= \GPIO[18]~output_o\;

GPIO(19) <= \GPIO[19]~output_o\;

GPIO(20) <= \GPIO[20]~output_o\;

GPIO(21) <= \GPIO[21]~output_o\;

GPIO(22) <= \GPIO[22]~output_o\;

GPIO(23) <= \GPIO[23]~output_o\;

GPIO(24) <= \GPIO[24]~output_o\;

GPIO(25) <= \GPIO[25]~output_o\;

GPIO(26) <= \GPIO[26]~output_o\;

GPIO(27) <= \GPIO[27]~output_o\;

GPIO(28) <= \GPIO[28]~output_o\;

GPIO(29) <= \GPIO[29]~output_o\;

GPIO(30) <= \GPIO[30]~output_o\;

GPIO(31) <= \GPIO[31]~output_o\;

GPIO(32) <= \GPIO[32]~output_o\;

GPIO(33) <= \GPIO[33]~output_o\;

GPIO(34) <= \GPIO[34]~output_o\;

GPIO(35) <= \GPIO[35]~output_o\;

GPIO(8) <= \GPIO[8]~output_o\;

GPIO(9) <= \GPIO[9]~output_o\;
END structure;


