LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity test_shift4 is
end test_shift4;

architecture test_b of test_shift4 is
signal Enable1,Sin1,Clock1: STD_LOGIC;
signal Q1: STD_LOGIC_VECTOR(3 downto 0);

component shift4 port (	Enable,Sin,Clock: 	in STD_LOGIC;
				Q:		out STD_LOGIC_VECTOR(3 downto 0));
end component;
begin	
	M1:shift4 PORT MAP(Clock=>Clock1, Sin=>Sin1, Enable=>Enable1, Q=>Q1);
	tb_proc1:process
	begin
		wait for 5 ns;
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
	end process;	
	tb_proc2:process
	begin
		wait for 5 ns;
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

	tb_proc3:process
	begin
		wait for 5 ns;
		Enable1 <= '1'; wait for 900 ns;
--		Enable1 <= '1'; wait for 50 ns;
--		Enable1 <= '0'; wait for 150 ns;
	end process;	

end test_b;