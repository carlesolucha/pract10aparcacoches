library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pract10 is
	port(
	reset_n : in std_logic;
	clk : in std_logic;
	entra_coche : in std_logic;
	sale_coche : in std_logic;
	max_coche : in std_logic_vector(7 downto 0);
	d_a , d_b : out std_logic_vector(6 downto 0);
	luz_verde : out std_logic;
	luz_roja : out std_logic);
end pract10;

architecture behavioral of pract10 is
	signal s_1senyal : std_logic;
	signal s_2senyal : std_logic;
	--signal subebaja : std_logic;
	signal num_coches : std_logic_vector(7 downto 0);
	signal d_a_senyal :std_logic_vector(3 downto 0);
	signal d_b_senyal :std_logic_vector(3 downto 0);
	
	component detectorflanco
		port(
		e : 		in std_logic;
		reset_n : in std_logic;
		clk : in std_logic;
		s : out std_logic);
	end component;
	
	component BinA7Seg
		port( 
		E			:in std_logic_vector(3 downto 0);
		salida	:out std_logic_vector(6 downto 0));
	end component;
	
	component contadorascdes 
		port(
		max : in std_logic_vector(7 downto 0);
		clk : in std_logic;
		reset_n : in std_logic;
		--eneable : in std_logic;
		a_dentrada : in std_logic;
		a_dsalida  : in std_logic;
		s : out std_logic_vector(7 downto 0);
		luz_verde : out std_logic;
		luz_roja : out std_logic);
	end component;
	
	begin
	--subebaja<= s_1senyal and s_2senyal;
	
	i_detectorflanco1 : detectorflanco
		port map(
		e => entra_coche,
		reset_n => reset_n,
		clk => clk,
		s => s_1senyal);
	i_detectorflanco2 : detectorflanco
		port map(
		e => sale_coche,
		reset_n => reset_n,
		clk => clk,
		s => s_2senyal);
	i_contadorascdes : contadorascdes
		port map(
		max =>max_coche,
		clk =>clk,
		reset_n=>reset_n,
		--eneable : in std_logic;
		a_dentrada => s_1senyal,
		a_dsalida  => s_2senyal,
		s => num_coches,
		luz_verde =>luz_verde,
		luz_roja =>luz_roja);
	
	d_a_senyal <=num_coches(7 downto 4);
	d_b_senyal <=num_coches(3 downto 0);
	
	i_1BinA7Seg : BinA7Seg
		port map(
		E			=>d_a_senyal,
		salida	=>d_a);
	i_2BinA7Seg : BinA7Seg
		port map(
		E			=>d_b_senyal,
		salida	=>d_b);
	
end behavioral;