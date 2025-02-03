library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eight_bit is
    Port ( 
        -- Clock inputs
        MAX10_CLK1_50 : in STD_LOGIC;

        -- 7-segment display outputs
        HEX0 : out STD_LOGIC_VECTOR (7 downto 0);
        HEX1 : out STD_LOGIC_VECTOR (7 downto 0);
        HEX2 : out STD_LOGIC_VECTOR (7 downto 0);

        -- Key inputs
        KEY : in STD_LOGIC_VECTOR (1 downto 0);

        -- LED outputs
        LEDR : out STD_LOGIC_VECTOR (9 downto 0);

        -- Switch inputs
        SW : in STD_LOGIC_VECTOR (9 downto 0)
    );
end eight_bit;

architecture Structural of eight_bit is
    signal clk_divided : STD_LOGIC;
    signal count : STD_LOGIC_VECTOR (7 downto 0);
    signal seg_ratusan : STD_LOGIC_VECTOR (7 downto 0);
    signal seg_puluhan : STD_LOGIC_VECTOR (7 downto 0);
    signal seg_satuan : STD_LOGIC_VECTOR (7 downto 0);

    component clk_divider
        Port ( 
            clk_in : in STD_LOGIC;
            clk_out : out STD_LOGIC;
            freq_select : in STD_LOGIC
        );
    end component;

    component counter
        Port ( 
            clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            start : in STD_LOGIC;
            mode : in STD_LOGIC;
            count : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    component seven_segment
        Port (
            input_biner : in STD_LOGIC_VECTOR (7 downto 0);
            seg_ratusan : out STD_LOGIC_VECTOR (7 downto 0);
            seg_puluhan : out STD_LOGIC_VECTOR (7 downto 0);
            seg_satuan : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

begin
    clk_div_inst : clk_divider
        Port map (
            clk_in => MAX10_CLK1_50,
            clk_out => clk_divided,
            freq_select => SW(1)
        );

    counter_inst : counter
        Port map (
            clk => clk_divided,
            reset => KEY(0), -- key0 for reset
            start => SW(0), -- switch 0 for start
            mode => SW(2), -- switch 1 for mode
            count => count
        );

    seven_segment_inst : seven_segment
        port map (
            input_biner => count,
            seg_ratusan => seg_ratusan,
            seg_puluhan => seg_puluhan,
            seg_satuan => seg_satuan
        );

    HEX2 <= seg_ratusan;
    HEX1 <= seg_puluhan;
    HEX0 <= seg_satuan;

    LEDR(7 downto 0) <= count;
    LEDR(9 downto 8) <= (others => '0');    

end Structural;