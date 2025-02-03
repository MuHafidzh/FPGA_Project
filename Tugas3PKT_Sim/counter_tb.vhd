LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY counter_tb IS
END counter_tb;

ARCHITECTURE behavior OF counter_tb IS
	
	-- Component Declaration For the Unit Under Test (UUT)
	
	COMPONENT counter
	PORT(
		clk:IN std_logic;
		reset:IN std_logic;
		mode:IN std_logic;
		count:OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	-- inisialisasi inputs
	signal clk: std_logic := '0';
	signal reset: std_logic := '1';
	signal mode: std_logic := '1';
	
	-- outputs
	signal count: std_logic_vector(7 downto 0);
	
	-- clock period definitions
	constant clk_period : time := 10 ns;
	
BEGIN

		-- Instantiate the Unit Under Test (UUT)
		uut: counter PORT MAP (
			clk => clk,
			reset => reset,
			mode => mode,
			count => count
			);
			
		-- Clock process definitions
		clk_process :process
		begin
			clk <= '0';
			wait for clk_period/2;
			clk <= '1';
			wait for clk_period/2;
		end process;
		
		-- Stimulus process of reset signal
		stim_proc: process
		begin
			-- hold reset state for 100 ns.
			wait for 100 ns;
			
					reset <= '0'; --ketika reset = 0, counter akan mulai menghitung
			wait for 2650 ns; -- counter up

					mode <='0'; -- ganti ke mode = 0, counter akan decrement (counter down)
			wait for 2650 ns;
			
					reset <= '1'; -- setelah itu direset counternya ke 0
			wait for 100 ns;
					
					reset <= '0'; -- abis itu logic reset di set ke 0, counter akan mulai menghitung lagi, sekarang masih counter down
			wait for 1000 ns;

					mode <= '1'; -- ganti ke mode = 1, counter akan increment (counter up)
			wait for 1000 ns;

					mode <= '0'; -- ganti ke mode = 0, counter akan decrement (counter down)
			wait;
		end process;
END behavior;
	