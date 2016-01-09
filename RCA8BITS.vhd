----------------------------------------------------------------------------------
-- Company: Jef's Corp.
-- Engineer: Jeferson L. Gonçalves
-- 
-- Create Date:    22:29:51 09/27/2012 
-- Design Name: 	 RCA8BITS
-- Module Name:    RCA8BITS - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RCA8BITS is
    Port ( a_i : in  STD_LOGIC_VECTOR (7 downto 0);
           b_i : in  STD_LOGIC_VECTOR (7 downto 0);
           s_o : out  STD_LOGIC_VECTOR (7 downto 0);
           c_o : out  STD_LOGIC;
           v_o : out  STD_LOGIC);
end RCA8BITS;

architecture Behavioral of RCA8BITS is

	component RCA4BITS
		port(
			a_i, b_i : in STD_LOGIC_VECTOR(3 downto 0); 
			c_o : out STD_LOGIC_VECTOR(1 downto 0); 
			s_o : out STD_LOGIC_VECTOR(3 downto 0);
			
			carry_in : in STD_LOGIC
		);
	end component;
	
	component OVERFLOW_TESTER
		port(
			c1, c2 : in STD_LOGIC; 
			saida : out STD_LOGIC
		);
	end component;
	
	signal carry_to_carry : STD_LOGIC_VECTOR(1 downto 0);
	signal to_overflow : STD_LOGIC_VECTOR(1 downto 0);

begin

	c_o <= to_overflow(1);

	--Nibble menos significativo
	LSNB : RCA4BITS port map (
		a_i => a_i(3 downto 0),
		b_i => b_i(3 downto 0),
		c_o => carry_to_carry,
		s_o => s_o(3 downto 0),
		
		carry_in => '0'
	);

	-- Nibble mais significativo
	MSNB : RCA4BITS port map (
		a_i => a_i(7 downto 4),
		b_i => b_i(7 downto 4),
		c_o => to_overflow,
		s_o => s_o(7 downto 4),
		
		carry_in => carry_to_carry(1)
	);

	-- Módulo responsavel pelo teste de overflow
	MODULO_OVERFLOW : OVERFLOW_TESTER port map (
		c1 => to_overflow(0),
		c2 => to_overflow(1),
		saida => v_o
	);

end Behavioral;

