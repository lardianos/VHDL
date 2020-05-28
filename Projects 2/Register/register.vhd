LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity s_register is port (
	D : in bit_vector(3 downto 0);
	clk : in bit;
	clr : in bit;
	Q : out bit_vector(3 downto 0));
end s_register;

architecture dataflow of s_register is

component flipflop_res is port(Din,Clock,Rstn: 	in bit;
				Qout:		out bit);
end component;
signal Q1 : bit_vector(3 downto 0);
begin	
	ff1:flipflop_res port map(Din=>D(0), Clock=>clk, Rstn=>clr, Qout=>Q1(0));
	ff2:flipflop_res port map(Din=>D(1), Clock=>clk, Rstn=>clr, Qout=>Q1(1));
	ff3:flipflop_res port map(Din=>D(2), Clock=>clk, Rstn=>clr, Qout=>Q1(2));
	ff4:flipflop_res port map(Din=>D(3), Clock=>clk, Rstn=>clr, Qout=>Q1(3));
	Q<=Q1;	
end architecture dataflow;