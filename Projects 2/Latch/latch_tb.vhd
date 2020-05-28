LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity test_la is
end test_la;

architecture test_b of test_la is
signal D1,EN1,Q1: bit;

component latch port (	D,EN:	in bit;
			Q:	out bit);
end component;

begin	
	M1:latch PORT MAP(D=>D1, EN=>EN1, Q=>Q1);
	tb_proc1:process
	begin
		wait for 5 ns;
		EN1 <= '1'; wait for 150 ns;
		EN1 <= '0'; wait for 250 ns;
		EN1 <= '1'; wait for 150 ns;
		EN1 <= '0'; wait for 250 ns;
		EN1 <= '1'; wait for 150 ns;
		EN1 <= '0'; wait for 250 ns;
		EN1 <= '1'; wait for 125 ns;
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