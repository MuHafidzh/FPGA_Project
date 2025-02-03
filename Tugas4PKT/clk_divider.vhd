library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clk_divider is
    Port ( 
        clk_in : in STD_LOGIC;
        clk_out : out STD_LOGIC;
        freq_select : in STD_LOGIC
    );
end clk_divider;

architecture Behavioral of clk_divider is
    -- log2(50,000,000) ≈ 25.57, need 26 bits
    signal clk_div : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal clk_out_1kHz : STD_LOGIC;
    signal clk_out_10kHz : STD_LOGIC;
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            if clk_div = "1100001101010000" then -- 50,000 - 1 in binary for 1 kHz
                clk_div <= (others => '0');
            else
                clk_div <= clk_div + 1;
            end if;
        end if;
    end process;

    -- 1 kHz
    clk_out_1kHz <= clk_div(15); -- MSB

    -- 10 kHz 
    clk_out_10kHz <= clk_div(13); -- bit 13
 
    clk_out <= clk_out_1kHz when freq_select = '0' else clk_out_10kHz;
end Behavioral;