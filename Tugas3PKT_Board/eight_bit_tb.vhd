library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity eight_bit_tb is
end eight_bit_tb;

architecture Behavioral of eight_bit_tb is
    -- Component declaration for the unit under test (UUT)
    component eight_bit
        Port ( 
            MAX10_CLK1_50 : in STD_LOGIC;
            HEX0 : out STD_LOGIC_VECTOR (7 downto 0);
            HEX1 : out STD_LOGIC_VECTOR (7 downto 0);
            HEX2 : out STD_LOGIC_VECTOR (7 downto 0);
            KEY : in STD_LOGIC_VECTOR (1 downto 0);
            LEDR : out STD_LOGIC_VECTOR (9 downto 0);
            SW : in STD_LOGIC_VECTOR (9 downto 0)
        );
    end component;

    -- Signals to connect to UUT
    signal MAX10_CLK1_50 : STD_LOGIC := '0';
    signal HEX0 : STD_LOGIC_VECTOR (7 downto 0);
    signal HEX1 : STD_LOGIC_VECTOR (7 downto 0);
    signal HEX2 : STD_LOGIC_VECTOR (7 downto 0);
    signal KEY : STD_LOGIC_VECTOR (1 downto 0) := (others => '1');
    signal LEDR : STD_LOGIC_VECTOR (9 downto 0);
    signal SW : STD_LOGIC_VECTOR (9 downto 0) := (others => '0');

    -- Clock period definitions
    constant CLK_PERIOD : time := 20 ns; -- 50 MHz clock

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: eight_bit
        Port map (
            MAX10_CLK1_50 => MAX10_CLK1_50,
            HEX0 => HEX0,
            HEX1 => HEX1,
            HEX2 => HEX2,
            KEY => KEY,
            LEDR => LEDR,
            SW => SW
        );

    -- Clock process definitions
    clk_process : process
    begin
        MAX10_CLK1_50 <= '0';
        wait for CLK_PERIOD/2;
        MAX10_CLK1_50 <= '1';
        wait for CLK_PERIOD/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset the system
        KEY(0) <= '1';
        wait for 100 ns;
        KEY(0) <= '0';

        -- Start the counter
        SW(0) <= '1';
        wait for 100 ns;
        SW(0) <= '0';

        -- Wait for the counter to reach 11111111
        wait for 2560 ns; -- Assuming each count takes 10 ns

        -- Change mode to count down
        SW(2) <= '1';
        wait for 100 ns;
        SW(2) <= '0';

        -- Wait for the counter to reach 00000000
        wait for 2560 ns; -- Assuming each count takes 10 ns

        -- Finish simulation
        wait;
    end process;

end Behavioral;