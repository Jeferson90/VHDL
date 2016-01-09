--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--
--entity top is
--	port( 
--	clk50_i 	: in  STD_LOGIC;
--	pb_i 		: in  STD_LOGIC_VECTOR (3 downto 0);
--	sw_i 		: in  STD_LOGIC_VECTOR (7 downto 0);
--	led_o 	: out  STD_LOGIC_VECTOR (7 downto 0);
--	seg_n_o 	: out STD_LOGIC_VECTOR (7 downto 0);
--	dig_n_o	: out STD_LOGIC_VECTOR (3 downto 0);
--	rs232rx_i: in  STD_LOGIC;
--	rs232tx_o: out STD_LOGIC
--	);
--end top;
--
--architecture Structural of top is

	--exemplo de declaracao do componente
--	component RCA4BITS
--	port(
--		a_i, b_i : in STD_LOGIC_VECTOR(3 downto 0); 
--		c_o : out STD_LOGIC; 
--		s_o : out STD_LOGIC_VECTOR(3 downto 0)
--	 );
--	 end component;

--begin

	--comentar em caso de uso
--	led_o(6 downto 4) <= (others=>'0');
--	seg_n_o <= (others=>'1');
--	dig_n_o <= (others=>'1');
--	rs232tx_o <= '0';

--	exemplo da instanciacao
--	inst_RCA4BITS : RCA4BITS
--	port map(
--		a_i => sw_i(3 downto 0),
--		b_i => sw_i(7 downto 4),
--		c_o => led_o(7),
--		s_o => led_o(3 downto 0));

--end Structural;
