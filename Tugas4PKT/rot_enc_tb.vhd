library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rot_enc_tb is
end rot_enc_tb;

architecture Behavioral of rot_enc_tb is
    signal clk : STD_LOGIC := '0';
    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal count : STD_LOGIC_VECTOR (9 downto 0);

    component get_counter
        Port (
            clk : in STD_LOGIC;
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            count : out STD_LOGIC_VECTOR (9 downto 0)
        );
    end component;

begin
    uut: get_counter
        Port map (
            clk => clk,
            A => A,
            B => B,
            count => count
        );

    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for 500 us; -- 1 kHz clock period (1 ms)
            clk <= '1';
            wait for 500 us;
        end loop;
    end process;

    stim_proc: process
    begin
        -- Initialize Inputs
        A <= '0';
        B <= '0';
        wait for 1 ms;

        for i in 0 to 998 loop
            A <= '1';
            wait for 1 ms;
            B <= '1';
            wait for 1 ms;
            A <= '0';
            wait for 1 ms;
            B <= '0';
            wait for 1 ms;
        end loop;

        for i in 998 downto 0 loop
            B <= '1';
            wait for 1 ms;
            A <= '1';
            wait for 1 ms;
            B <= '0';
            wait for 1 ms;
            A <= '0';
            wait for 1 ms;
        end loop;

        wait;
    end process;

end Behavioral;