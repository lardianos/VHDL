LIBRARY ieee ;
USE ieee.std_logic_1164.all;

entity test_dec is
end test_dec;

architecture test_b of test_dec is
signal A1: std_logic_vector(2 downto 1);
signal D1: std_logic_vector(4 downto 1);

component dec2to4 port (	a:	in std_logic_vector(2 downto 1);
				d:	out std_logic_vector(4 downto 1));
end component;
begin	
	M1:dec2to4 PORT MAP(a=>A1, d=>D1);
	process
	begin
		A1 <= "00"; wait for 20 ps;
		A1 <= "01"; wait for 20 ps;
		A1 <= "10"; wait for 20 ps;
		A1 <= "11"; wait for 20 ps;		
	end process;
end test_b;