LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity test_flipflop is
end test_flipflop;

architecture test_b of test_flipflop is
signal D1,CLK1,Q1: bit;

component flipflop port (	D,CLK:	in bit;
				Q:	out bit);
end component;

begin	
	M1:flipflop PORT MAP(D=>D1, CLK=>CLK1, Q=>Q1);
	tb_proc1:process
	begin
		wait for 5 ns;
		CLK1 <= '1'; wait for 150 ns;
		CLK1 <= '0'; wait for 250 ns;
		CLK1 <= '1'; wait for 150 ns;
		CLK1 <= '0'; wait for 250 ns;
		CLK1 <= '1'; wait for 150 ns;
		CLK1 <= '0'; wait for 250 ns;
		CLK1 <= '1'; wait for 125 ns;
	end process;
	tb_proc2:process
	begin		
		wait for 5 ns;
		D1 <= '1'; wait for 200 ns;
		D1 <= '0'; wait for 400 ns;
		D1 <= '1'; wait for 200 ns;		
		D1 <= '0'; wait for 150 ns;
		D1 <= '1'; wait for 75 ns;		
		D1 <= '0'; wait for 150 ns;
		D1 <= '1'; wait for 150 ns;
	end process;
end test_b;