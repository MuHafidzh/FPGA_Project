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
    signal clk_div : STD_LOGIC_VECTOR (25 downto 0) := (others => '0');
    signal clk_out_1Hz : STD_LOGIC;
    signal clk_out_10Hz : STD_LOGIC;
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            if clk_div = "10111110101111000010000000" then -- 50,000,000 - 1 in binary for 1 Hz
                clk_div <= (others => '0');
            else
                clk_div <= clk_div + 1;
            end if;
        end if;
    end process;

    -- 1 Hz
    clk_out_1Hz <= clk_div(25); -- MSB

    -- 10 Hz 
    clk_out_10Hz <= clk_div(23); -- bit 23
 
    clk_out <= clk_out_1Hz when freq_select = '0' else clk_out_10Hz;
end Behavioral;