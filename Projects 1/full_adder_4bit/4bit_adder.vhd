LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY adder4 IS PORT (
Cin : IN STD_LOGIC;
X, Y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
Cout : OUT STD_LOGIC);
END adder4;

architecture dataflow of adder4 is
component fa is port(A,B,Cin: 	in STD_LOGIC;
			S,Cout:	out STD_LOGIC);
end component;
signal C: std_logic_vector(4 downto 0);
begin
	adder1:fa port map( A=>X(0), B=>Y(0), Cin=>C(0), S=>S(0), Cout=>C(1));
	adder2:fa port map( A=>X(1), B=>Y(1), Cin=>C(1), S=>S(1), Cout=>C(2));
	adder3:fa port map( A=>X(2), B=>Y(2), Cin=>C(2), S=>S(2), Cout=>C(3));
	adder4:fa port map( A=>X(3), B=>Y(3), Cin=>C(3), S=>S(3), Cout=>C(4));
	C(0) <= Cin;		
	Cout <= C(4);				

end architecture dataflow;