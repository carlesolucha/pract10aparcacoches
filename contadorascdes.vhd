library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contadorascdes is
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
end contadorascdes;

architecture behavioral of contadorascdes is
	signal contador : unsigned(7 downto 0);
	signal cero_senyal : unsigned(7 downto 0);
begin 

		process(clk,reset_n)
		begin
			if reset_n='0' then
				contador <= (others =>'0');
			else
				if rising_edge(clk) then
					--if eneable ='1' then
						if (contador < unsigned(max) and contador>0) then
							if a_dentrada='1' then
								contador<=contador+1;
							end if;
							if a_dsalida='1' then
								contador<=contador-1;
							end if;
						end if;
				end if;
			end if;
		end process;
		
		luz_roja<= '1' when contador>=unsigned(max) else '0';
		luz_verde<='0' when contador>=unsigned(max) else '1';

		s<=std_logic_vector(contador);
end behavioral;
	