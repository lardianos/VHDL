LIBRARY ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.ALL;

entity test_reg4_4bit is
end test_reg4_4bit;

architecture test_b of test_reg4_4bit is
signal we1,clk1: STD_LOGIC;
signal C1,B1,A1: STD_LOGIC_VECTOR(3 downto 0);
signal	RADDR1,RADDR2,WADDR1:	std_logic_vector(1 downto 0);

component reg4_4bit port (	A		:   in STD_LOGIC_VECTOR(3 downto 0);
			            	rAddr1	:   in STD_LOGIC_VECTOR(1 downto 0);
							rAddr2	:   in STD_LOGIC_VECTOR(1 downto 0);
							wAddr	:   in STD_LOGIC_VECTOR(1 downto 0);
							we		:	in std_logic;
							clk		:	in std_logic;
							B		:	out STD_LOGIC_VECTOR(3 downto 0);
                        	C		:	out STD_LOGIC_VECTOR(3 downto 0));
end component;
begin
	M1:reg4_4bit PORT MAP(clk=>clk1, A=>A1, we=>we1, rAddr1=>RADDR1,rAddr2=>RADDR2,wAddr=>WADDR1,B=>B1, C=>C1);
	tb_proc1:process
	begin
		--wait for 5 ns;
		clk1 <= '1'; wait for 50 ns;--
		clk1 <= '0'; wait for 50 ns;--1
		clk1 <= '1'; wait for 50 ns;--
		clk1 <= '0'; wait for 50 ns;--2
		clk1 <= '1'; wait for 50 ns;--
		clk1 <= '0'; wait for 50 ns;--3
		clk1 <= '1'; wait for 50 ns;--
		clk1 <= '0'; wait for 50 ns;--4
		clk1 <= '1'; wait for 50 ns;--
		clk1 <= '0'; wait for 50 ns;--5
		clk1 <= '1'; wait for 50 ns;--
		clk1 <= '0'; wait for 50 ns;--6
	end process;
	tb_proc2:process
	begin
		--write
        A1 <= "0101"; WADDR1 <="00"; wait for 100 ns;--0
		A1 <= "1010"; WADDR1 <="01"; wait for 100 ns;--1
        A1 <= "0000"; WADDR1 <="10"; wait for 100 ns;--2
        A1 <= "1111"; WADDR1 <="11"; wait for 100 ns;--3
		--read
		RADDR1 <="00"; RADDR2 <="10"; wait for 100 ns;--1
		RADDR1 <="01"; RADDR2 <="11"; wait for 100 ns;--1
	end process;
	tb_proc3:process
	begin
		--write
		we1 <= '1'; wait for 400 ns;--1
		--read
		we1 <= '0'; wait for 200 ns;--2
	end process;
end test_b;
