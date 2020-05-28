LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity test_fa is
end test_fa;

architecture test_b of test_fa is
signal A1,B1,CIN1,S1,COUT1: bit;

component fa port (	A,B,Cin:	in bit;
			S,Cout:		out bit);
end component;

begin	
	M1:fa PORT MAP(A=>A1, B=>B1, Cin=>CIN1, S=>S1, Cout=>COUT1);
	process
	begin
		A1 <= '0'; B1 <= '0'; CIN1 <= '0'; wait for 20 ps;
		A1 <= '0'; B1 <= '0'; CIN1 <= '1'; wait for 20 ps;
		A1 <= '0'; B1 <= '1'; CIN1 <= '0'; wait for 20 ps;
		A1 <= '0'; B1 <= '1'; CIN1 <= '1'; wait for 20 ps;
		A1 <= '1'; B1 <= '0'; CIN1 <= '0'; wait for 20 ps;
		A1 <= '1'; B1 <= '0'; CIN1 <= '1'; wait for 20 ps;
		A1 <= '1'; B1 <= '1'; CIN1 <= '0'; wait for 20 ps;
		A1 <= '1'; B1 <= '1'; CIN1 <= '1'; wait for 20 ps;
	end process;
end test_b;