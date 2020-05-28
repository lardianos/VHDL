LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity test_shiftn is
end test_shiftn;

architecture test_b of test_shiftn is
signal Enable1,Load1,Sin1,Clock1: STD_LOGIC;
signal Q1,D1: STD_LOGIC_VECTOR(3 downto 0);

component shiftn port (	D:			in STD_LOGIC_VECTOR(3 downto 0);
			Enable,Load,Sin,Clock: 	in STD_LOGIC;
			Q:			out STD_LOGIC_VECTOR(3 downto 0));
end component;
begin	
	M1:shiftn PORT MAP(Clock=>Clock1,D=>D1, Sin=>Sin1, Load=>Load1, Enable=>Enable1, Q=>Q1);
	process
	begin
		Enable1 <= '1';
		D1 <= "0000";
		Load1 <= '0';
		Sin1 <= '1';

		Clock1 <= '0'; wait for 50 ns;--
		Clock1 <= '1'; wait for 50 ns;--1
		
		Sin1 <= '0'; 		
		Clock1 <= '0'; wait for 50 ns;--2
		Clock1 <= '1'; wait for 50 ns;--

		Sin1 <= '0'; 
		Clock1 <= '0'; wait for 50 ns;--3
		Clock1 <= '1'; wait for 50 ns;--

		Sin1 <= '1'; 
		Clock1 <= '0'; wait for 50 ns;--4
		Clock1 <= '1'; wait for 50 ns;--

		Sin1 <= '0';
		Clock1 <= '0'; wait for 50 ns;--5
		Clock1 <= '1'; wait for 50 ns;--


		Sin1 <= '0';
		Clock1 <= '0'; wait for 50 ns;--6
		Clock1 <= '1'; wait for 50 ns;--


		Sin1 <= '1';
		Clock1 <= '0'; wait for 50 ns;--7
		Clock1 <= '1'; wait for 50 ns;--


		Sin1 <= '1';
		Clock1 <= '0'; wait for 50 ns;--8
		Clock1 <= '1'; wait for 50 ns;--


		Sin1 <= '0';
		Clock1 <= '0'; wait for 50 ns;--9
		Clock1 <= '1'; wait for 50 ns;--

			 
	end process;
end test_b;