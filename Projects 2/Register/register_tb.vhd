LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity test_s_register is
end test_s_register;

architecture test_b of test_s_register is
signal D1,Q1: bit_vector(3 downto 0);
signal CLR1,CLK1: bit;

component s_register port (	D: 		in bit_vector(3 downto 0);
				clk,clr: 	in bit;
				Q:		out bit_vector(3 downto 0));
end component;

begin	
	M1:s_register PORT MAP(D=>D1, clk=>CLK1,clr=>CLR1, Q=>Q1);
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
		D1 <= "1010"; wait for 100 ns;
		D1 <= "1111"; wait for 250 ns;
		D1 <= "1101"; wait for 200 ns;
		D1 <= "0110"; wait for 200 ns;
		D1 <= "1001"; wait for 300 ns;
		D1 <= "1000"; wait for 275 ns;	
	end process;
	tb_proc3:process
	begin		--1325
		wait for 5 ns;
		CLR1 <= '1'; wait for 250 ns;
		CLR1 <= '0'; wait for 50 ns;
		CLR1 <= '1'; wait for 300 ns;		
		CLR1 <= '0'; wait for 250 ns;
		CLR1 <= '1'; wait for 100 ns;		
		CLR1 <= '0'; wait for 250 ns;
		CLR1 <= '1'; wait for 125 ns;
	end process;
end test_b;
