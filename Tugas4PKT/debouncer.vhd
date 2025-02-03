library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity debouncer is
    Port (
        clk : in STD_LOGIC;
        signal_in : in STD_LOGIC;
        signal_out : out STD_LOGIC
    );
end debouncer;

architecture Behavioral of debouncer is
    signal shift_reg : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            shift_reg <= shift_reg(1 downto 0) & signal_in;
        end if;
    end process;

    signal_out <= '1' when shift_reg = "111" else '0';
end Behavioral;