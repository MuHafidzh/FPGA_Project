library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rot_enc is
    Port (
        clk : in STD_LOGIC;
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        freq_select : in STD_LOGIC;
        seg_ratusan : out STD_LOGIC_VECTOR (7 downto 0);
        seg_puluhan : out STD_LOGIC_VECTOR (7 downto 0);
        seg_satuan : out STD_LOGIC_VECTOR (7 downto 0)
    );
end rot_enc;

architecture Behavioral of rot_enc is
    signal clk_div_out : STD_LOGIC;
    signal count : STD_LOGIC_VECTOR (9 downto 0);
    signal A_debounced, B_debounced : STD_LOGIC;

    component clk_divider
        Port ( 
            clk_in : in STD_LOGIC;
            clk_out : out STD_LOGIC;
            freq_select : in STD_LOGIC
        );
    end component;

    component debouncer
        Port (
            clk : in STD_LOGIC;
            signal_in : in STD_LOGIC;
            signal_out : out STD_LOGIC
        );
    end component;

    component get_counter
        Port (
            clk : in STD_LOGIC;
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            count : out STD_LOGIC_VECTOR (9 downto 0)
        );
    end component;

    component seven_segment
        Port (
            input_biner : in STD_LOGIC_VECTOR (9 downto 0);
            seg_ratusan : out STD_LOGIC_VECTOR (7 downto 0);
            seg_puluhan : out STD_LOGIC_VECTOR (7 downto 0);
            seg_satuan : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

begin
    clk_div_inst : clk_divider
        Port map (
            clk_in => clk,
            clk_out => clk_div_out,
            freq_select => freq_select
        );

    debouncer_A : debouncer
        Port map (
            clk => clk_div_out,
            signal_in => A,
            signal_out => A_debounced
        );

    debouncer_B : debouncer
        Port map (
            clk => clk_div_out,
            signal_in => B,
            signal_out => B_debounced
        );

    rotary_enc_inst : get_counter
        Port map (
            clk => clk_div_out,
            A => A_debounced,
            B => B_debounced,
            count => count
        );

    seven_seg_inst : seven_segment
        Port map (
            input_biner => count,
            seg_ratusan => seg_ratusan,
            seg_puluhan => seg_puluhan,
            seg_satuan => seg_satuan
        );
end Behavioral;