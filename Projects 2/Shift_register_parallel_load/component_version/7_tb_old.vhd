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
	tb_proc1:process
	begin
		--wait for 5 ns;
		Clock1 <= '1'; wait for 50 ns;--
		Clock1 <= '0'; wait for 50 ns;--1
		Clock1 <= '1'; wait for 50 ns;--
		Clock1 <= '0'; wait for 50 ns;--2
		Clock1 <= '1'; wait for 50 ns;--
		Clock1 <= '0'; wait for 50 ns;--3
		Clock1 <= '1'; wait for 50 ns;--
		Clock1 <= '0'; wait for 50 ns;--4
		Clock1 <= '1'; wait for 50 ns;--
		Clock1 <= '0'; wait for 50 ns;--5
		Clock1 <= '1'; wait for 50 ns;--
		Clock1 <= '0'; wait for 50 ns;--6
		Clock1 <= '1'; wait for 50 ns;--
		Clock1 <= '0'; wait for 50 ns;--7
		Clock1 <= '1'; wait for 50 ns;--
		Clock1 <= '0'; wait for 50 ns;--8
		Clock1 <= '1'; wait for 50 ns;--
		Clock1 <= '0'; wait for 50 ns;--9
		Clock1 <= '1'; wait for 50 ns;--
		Clock1 <= '0'; wait for 50 ns;--10
		Clock1 <= '1'; wait for 50 ns;--
		Clock1 <= '0'; wait for 50 ns;--11
		Clock1 <= '1'; wait for 50 ns;--
		Clock1 <= '0'; wait for 50 ns;--12
		Clock1 <= '1'; wait for 50 ns;--
		Clock1 <= '0'; wait for 50 ns;--13
	end process;	
	tb_proc2:process
	begin
		--wait for 5 ns;
		--D1 <= "1001"; Load1 <= '1'; wait for 100 ns;--1
		D1 <= "0000"; Load1 <= '0'; wait for 1000 ns;--1
		
	end process;
	tb_proc3:process
	begin
		--wait for 5 ns;
		Sin1 <= '0'; wait for 400 ns;--0
		Sin1 <= '1'; wait for 100 ns;--1
		Sin1 <= '0'; wait for 100 ns;--2
		Sin1 <= '0'; wait for 100 ns;--3
		Sin1 <= '1'; wait for 100 ns;--4
		Sin1 <= '0'; wait for 100 ns;--5
		Sin1 <= '0'; wait for 100 ns;--6
		Sin1 <= '1'; wait for 100 ns;--7
		Sin1 <= '1'; wait for 100 ns;--8
		Sin1 <= '0'; wait for 100 ns;--9
	end process;	

	tb_proc4:process
	begin
		--wait for 5 ns;
		--Enable1 <= '0'; wait for 10 ns;
		Enable1 <= '1'; wait for 300 ns;
		Enable1 <= '0'; wait for 50 ns;
		Enable1 <= '1'; wait for 950 ns;
		--Enable1 <= '1'; wait for 50 ns;
		--Enable1 <= '0'; wait for 150 ns;
	end process;	

end test_b;