library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
    Port ( 
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        start : in STD_LOGIC;
        mode : in STD_LOGIC;
        count : out STD_LOGIC_VECTOR (7 downto 0)
    );
end counter;

architecture Behavioral of counter is
    signal counter_value : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
begin
    process(clk, reset, mode, start)
    begin
        if reset = '0' then -- active low reset
            counter_value <= (others => '0');
        elsif rising_edge(clk) then
            if start = '1' then
                if mode = '0' then
                    counter_value <= counter_value + 1;
                else
                    counter_value <= counter_value - 1;
                end if;
            end if;
        end if;
    end process;

    count <= counter_value;
end Behavioral;