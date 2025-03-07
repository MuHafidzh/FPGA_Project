library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pekate is
    Port ( 
        -- Clock inputs
        ADC_CLK_10 : in STD_LOGIC;
        MAX10_CLK1_50 : in STD_LOGIC;
        MAX10_CLK2_50 : in STD_LOGIC;

        -- 7-segment display outputs
        HEX0 : out STD_LOGIC_VECTOR (7 downto 0);

        -- Key inputs
        KEY : in STD_LOGIC_VECTOR (1 downto 0);

        -- LED outputs
        LEDR : out STD_LOGIC_VECTOR (9 downto 0);

        -- Switch inputs
        SW : in STD_LOGIC_VECTOR (9 downto 0)
    );
end pekate;

architecture Structural of pekate is
    signal clk_divided : STD_LOGIC;
    signal count : STD_LOGIC_VECTOR (4 downto 0);

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
            count : out STD_LOGIC_VECTOR (4 downto 0)
        );
    end component;

    component seg7_decoder
        Port ( 
            digit : in STD_LOGIC_VECTOR (4 downto 0);
            seg : out STD_LOGIC_VECTOR (7 downto 0)
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
            count => count
        );

    seg7_decoder_inst : seg7_decoder
        Port map (
            digit => count,
            seg => HEX0
        );

    LEDR(4 downto 0) <= count;
    LEDR(9 downto 5) <= (others => '0');    

end Structural;