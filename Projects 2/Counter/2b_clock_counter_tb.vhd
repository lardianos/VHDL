LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity test_upcount is
end test_upcount;

architecture test_b of test_upcount is
signal CLR1,CLK1: STD_LOGIC;
signal Q1: STD_LOGIC_VECTOR(1 downto 0);

component upcounter port (	Clock,Clear: 	in STD_LOGIC;
				Q:		out STD_LOGIC_VECTOR(1 downto 0));
end component;

begin	
	M1:upcounter PORT MAP(Clock=>CLK1, Clear=>CLR1,Q=>Q1);
	tb_proc1:process
	begin
		wait for 5 ns;
		CLK1 <= '1'; wait for 100 ns;
		CLK1 <= '0'; wait for 100 ns;
		CLK1 <= '1'; wait for 100 ns;
		CLK1 <= '0'; wait for 100 ns;
		CLK1 <= '1'; wait for 100 ns;
		CLK1 <= '0'; wait for 100 ns;
		CLK1 <= '1'; wait for 100 ns;
		CLK1 <= '0'; wait for 100 ns;
		CLK1 <= '1'; wait for 100 ns;
		CLK1 <= '0'; wait for 100 ns;
		CLK1 <= '1'; wait for 100 ns;
		CLK1 <= '0'; wait for 100 ns;
	end process;	
	tb_proc2:process
	begin
		wait for 5 ns;
		CLR1 <= '0'; wait for 1000 ns;
		CLR1 <= '1'; wait for 50 ns;
		CLR1 <= '0'; wait for 150 ns;
	
		--CLR1 <= '0'; wait for 200 ns;
		--CLR1 <= '1'; wait for 50 ns;
		--CLR1 <= '0'; wait for 450 ns;
		--CLR1 <= '1'; wait for 50 ns;
	end process;	
end test_b;