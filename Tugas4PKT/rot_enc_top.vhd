library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rot_enc_top is
    Port (
        -- CLOCK
        MAX10_CLK1_50 : in STD_LOGIC;

        -- SEG7
        HEX0 : out STD_LOGIC_VECTOR (7 downto 0);
        HEX1 : out STD_LOGIC_VECTOR (7 downto 0);
        HEX2 : out STD_LOGIC_VECTOR (7 downto 0);

        -- GPIO
        GPIO : inout STD_LOGIC_VECTOR (35 downto 0);

        -- Switches
        SW : in STD_LOGIC_VECTOR (9 downto 0)
    );
end rot_enc_top;

architecture Behavioral of rot_enc_top is
    signal clk : STD_LOGIC;
    signal A : STD_LOGIC;
    signal B : STD_LOGIC;
    signal freq_select : STD_LOGIC;
    signal seg_ratusan : STD_LOGIC_VECTOR (7 downto 0);
    signal seg_puluhan : STD_LOGIC_VECTOR (7 downto 0);
    signal seg_satuan : STD_LOGIC_VECTOR (7 downto 0);

    component rot_enc
        Port (
            clk : in STD_LOGIC;
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            freq_select : in STD_LOGIC;
            seg_ratusan : out STD_LOGIC_VECTOR (7 downto 0);
            seg_puluhan : out STD_LOGIC_VECTOR (7 downto 0);
            seg_satuan : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

begin
   
    A <= GPIO(8);         
    B <= GPIO(9);         
    freq_select <= SW(0); 

    
    rot_enc_inst : rot_enc
        Port map (
            clk => MAX10_CLK1_50, 
            A => A,
            B => B,
            freq_select => freq_select,
            seg_ratusan => seg_ratusan,
            seg_puluhan => seg_puluhan,
            seg_satuan => seg_satuan
        );

    
    HEX0 <= seg_satuan;
    HEX1 <= seg_puluhan;
    HEX2 <= seg_ratusan;
end Behavioral;