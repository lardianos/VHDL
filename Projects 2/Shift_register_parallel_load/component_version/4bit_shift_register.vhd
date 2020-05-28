LIBRARY ieee;
USE ieee.std_logic_1164.all;


entity shiftn is
	generic (N: INTEGER := 4);
	port(	D:		in std_logic_vector(n-1 downto 0);
		Enable: 	in std_logic;
		Load:		in std_logic;
		Sin:		in std_logic;
		Clock:		in std_logic;
		Q:		out std_logic_vector(n-1 downto 0));
end shiftn;

architecture dataflow of shiftn is

component flipflop_res is port(
				D,CLK,Rstn: 	in std_logic;
				Qout:		out std_logic);
end component;

component mux_double_2to1 is port(
				a, b: 	in std_logic;
				s:	in std_logic;
				d:	out std_logic);
end component;

signal C: std_logic:='0';
signal MQ : std_logic_vector(3 downto 0):="0000";
signal FQ : std_logic_vector(3 downto 0):="0000";
begin	
	mux1:mux_double_2to1 port map(a=>D(3), b=>C, s=>Load, d=>MQ(0));
	mux2:mux_double_2to1 port map(a=>D(2), b=>FQ(1), s=>Load, d=>MQ(1));
	mux3:mux_double_2to1 port map(a=>D(1), b=>FQ(2), s=>Load, d=>MQ(2));
	mux4:mux_double_2to1 port map(a=>D(0), b=>FQ(3), s=>Load, d=>MQ(3));

	ff1:flipflop_res port map(D=>MQ(0), CLK=>Clock, Rstn=>Enable, Qout=>FQ(0));
	ff2:flipflop_res port map(D=>MQ(1), CLK=>Clock, Rstn=>Enable, Qout=>FQ(1));
	ff3:flipflop_res port map(D=>MQ(2), CLK=>Clock, Rstn=>Enable, Qout=>FQ(2));
	ff4:flipflop_res port map(D=>MQ(3), CLK=>Clock, Rstn=>Enable, Qout=>FQ(3));
	C<=Sin;	
	Q<=FQ;
	--Q(0)<=FQ(0);
	--Q(1)<=FQ(1);
	--Q(2)<=FQ(2);
	--Q(3)<=FQ(3);

end architecture dataflow;