library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is 
	port(clk:in STD_lOGIC;  
		reset:in STD_LOGIC; 
		mode: in STD_LOGIC;
		count:out STD_LOGIC_VECTOR (7 downto 0)); -- output counter 8 bit
end counter;

architecture Behavioral of counter is
signal tmp_count: std_logic_vector(7 downto 0);
begin
process(clk,reset,mode)
begin
	if(reset='1') then  -- reset counter ke 0 ketika logic reset = 1
		tmp_count <=(others=>'0');
	elsif(rising_edge(clk)) then
		if (mode ='1') then 
			tmp_count <= tmp_count+1; -- increment counter ketika mode = 1
		else
			tmp_count <= tmp_count-1; -- decrement counter ketika mode = 0
		end if;
	end if;
end process;
count<=tmp_count; -- mengassign nilai counter ke port count
end Behavioral;
