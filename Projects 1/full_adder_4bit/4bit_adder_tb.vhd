LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity test_4fa is
end test_4fa;

architecture test_b of test_4fa is
signal CIN1,COUT1: STD_LOGIC;
signal X1,Y1,S1: STD_LOGIC_VECTOR(3 DOWNTO 0);


component adder4 port (	Cin:	in STD_LOGIC;
			X,Y:	in STD_LOGIC_VECTOR(3 DOWNTO 0);
			S:	out STD_LOGIC_VECTOR(3 DOWNTO 0);	
			Cout:	out STD_LOGIC);
end component;

begin	
	M1:adder4 PORT MAP(X=>X1, Y=>Y1, Cin=>CIN1, S=>S1, Cout=>COUT1);
	process
	begin
		X1 <= "0000"; Y1 <= "0000"; CIN1 <= '0'; wait for 20 ps;
		X1 <= "1111"; Y1 <= "1111"; CIN1 <= '0'; wait for 20 ps;
		X1 <= "1111"; Y1 <= "1111"; CIN1 <= '1'; wait for 20 ps;
--		A1 <= '0'; B1 <= '0'; CIN1 <= '0'; wait for 20 ps;
--		A1 <= '0'; B1 <= '0'; CIN1 <= '1'; wait for 20 ps;
--		A1 <= '0'; B1 <= '1'; CIN1 <= '0'; wait for 20 ps;
--		A1 <= '0'; B1 <= '1'; CIN1 <= '1'; wait for 20 ps;
--		A1 <= '1'; B1 <= '0'; CIN1 <= '0'; wait for 20 ps;
--		A1 <= '1'; B1 <= '0'; CIN1 <= '1'; wait for 20 ps;
--		A1 <= '1'; B1 <= '1'; CIN1 <= '0'; wait for 20 ps;
--		A1 <= '1'; B1 <= '1'; CIN1 <= '1'; wait for 20 ps;
	end process;
end test_b;