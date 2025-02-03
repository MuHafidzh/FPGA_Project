library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 

entity seven_segment is
    Port (
        input_biner : in STD_LOGIC_VECTOR (7 downto 0);
        seg_ratusan : out STD_LOGIC_VECTOR (7 downto 0);
        seg_puluhan : out STD_LOGIC_VECTOR (7 downto 0);
        seg_satuan : out STD_LOGIC_VECTOR (7 downto 0)
    );
end seven_segment;

architecture Behavioral of seven_segment is
    signal ratusan : STD_LOGIC_VECTOR (3 downto 0);
    signal puluhan : STD_LOGIC_VECTOR (3 downto 0);
    signal satuan : STD_LOGIC_VECTOR (3 downto 0);

    function digit_to_7seg(digit : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
    begin
        case digit is
            when "0000" => return "11000000"; -- 0
            when "0001" => return "11111001"; -- 1
            when "0010" => return "10100100"; -- 2
            when "0011" => return "10110000"; -- 3
            when "0100" => return "10011001"; -- 4
            when "0101" => return "10010010"; -- 5
            when "0110" => return "10000010"; -- 6
            when "0111" => return "11111000"; -- 7
            when "1000" => return "10000000"; -- 8
            when "1001" => return "10010000"; -- 9
            when others => return "11111111"; -- default (all segments off)
        end case;
    end function;

begin
    process(input_biner)
    begin
        ratusan <= std_logic_vector(to_unsigned(to_integer(unsigned(input_biner)) / 100, 4));
        puluhan <= std_logic_vector(to_unsigned((to_integer(unsigned(input_biner)) / 10) mod 10, 4));
        satuan <= std_logic_vector(to_unsigned(to_integer(unsigned(input_biner)) mod 10, 4));

        seg_ratusan <= digit_to_7seg(ratusan);
        seg_puluhan <= digit_to_7seg(puluhan);
        seg_satuan <= digit_to_7seg(satuan);
    end process;
end Behavioral;