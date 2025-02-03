library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity get_counter is
    Port (
        clk : in STD_LOGIC;
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        count : out STD_LOGIC_VECTOR (9 downto 0)
    );
end get_counter;

architecture Behavioral of get_counter is
    signal count_reg : STD_LOGIC_VECTOR (9 downto 0) := (others => '0');
    signal A_delayed, B_delayed : STD_LOGIC;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            A_delayed <= A;
            B_delayed <= B;
            if (A = '1' and A_delayed = '0') then
                if (B = '0') then
                    count_reg <= count_reg + 1;
                else
                    count_reg <= count_reg - 1;
                end if;
            end if;
        end if;
    end process;
    count <= count_reg;
end Behavioral;