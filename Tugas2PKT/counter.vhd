library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter is
    Port ( 
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        start : in STD_LOGIC;
        count : out STD_LOGIC_VECTOR (4 downto 0)
    );
end counter;

architecture Behavioral of counter is
    signal V, W, X, Y, Z : STD_LOGIC := '0';
    signal Dv, Dw, Dx, Dy, Dz : STD_LOGIC;
begin
    process(clk, reset, start)
    begin
        if reset = '0' then --active low
            V <= '0';
            W <= '0';
            X <= '0';
            Y <= '0';
            Z <= '0';
        elsif rising_edge(clk) then
            if start = '1' then
                V <= Dv;
                W <= Dw;
                X <= Dx;
                Y <= Dy;
                Z <= Dz;
            end if;
        end if;
    end process;

    -- Next state logic
    process(V, W, X, Y, Z)
    begin
        Dv <= (W and X and Y and Z) or (V and not Y) or (V and not Z);
        Dw <= (not W and X and Y and Z) or (W and not X) or (W and not Y) or (W and not Z);
        Dx <= (not V and not X and Y and Z) or (X and not Y) or (X and not Z);
        Dy <= (not Y and Z) or (Y and not Z);
        Dz <= not Z;
    end process;
    -- Reset to 0 after 19 (10011)
    count <= V & W & X & Y & Z;
end Behavioral;