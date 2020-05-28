LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity test_reg4 is
end test_reg4;

architecture test_b of test_reg4 is
signal Resetn1,Clock1: STD_LOGIC;
signal Q1,D1: STD_LOGIC_VECTOR(3 downto 0);

component reg4 port (	D:              in STD_LOGIC_VECTOR(3 downto 0);
			            Resetn,Clock: 	in STD_LOGIC;
                        Q:              out STD_LOGIC_VECTOR(3 downto 0));
end component;
begin
	M1:reg4 PORT MAP(Clock=>Clock1, D=>D1, Resetn=>Resetn1, Q=>Q1);
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
	end process;
	tb_proc2:process
	begin
        D1 <= "0000";   wait for 100 ns;--0
		D1 <= "0010";   wait for 100 ns;--1
        D1 <= "1110";   wait for 100 ns;--2
        D1 <= "1010";   wait for 100 ns;--3
	end process;
	tb_proc3:process
	begin
		Resetn1 <= '0'; wait for 100 ns;--1
        Resetn1 <= '1'; wait for 300 ns;--1
	end process;
end test_b;
