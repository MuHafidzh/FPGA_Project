library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seg7_decoder is
    Port ( 
        digit : in STD_LOGIC_VECTOR (4 downto 0);
        seg : out STD_LOGIC_VECTOR (7 downto 0)
    );
end seg7_decoder;

architecture Behavioral of seg7_decoder is
    signal V, W, X, Y, Z : STD_LOGIC;
begin
    V <= digit(4);
    W <= digit(3);
    X <= digit(2);
    Y <= digit(1);
    Z <= digit(0);
    
    seg(0) <= not((not W and not Y and not Z) or (X and not Z) or (W and Y and not Z) or (V and not Z));
    seg(1) <= not((not W and not Z) or (not X and not Y and not Z) or (X and Y and not Z));
    seg(2) <= not((not X and not Z) or (Y and not Z) or (W and not Z));
    seg(3) <= not((not W and not Y and not Z) or (not W and X and not Z) or (W and not X and Y and not Z) or (X and not Y and not Z) or (V and not Z));
    seg(4) <= not((not W and not Y and not Z) or (X and not Y and not Z));
    seg(5) <= not((not X and not Y and not Z) or (W and not X and not Z) or (W and not Y and not Z) or (V and not Z));
    seg(6) <= not((not W and X and not Z) or (W and not X and not Z) or (V and not Z) or (X and not Y and not Z));
    seg(7) <= '1';

    
end Behavioral;