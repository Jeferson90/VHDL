----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:45 09/06/2012 
-- Design Name: 
-- Module Name:    RCA4BITS - Behavioral 
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

entity RCA4BITS is
   Port ( a_i : in  STD_LOGIC_VECTOR (3 downto 0);
          b_i : in  STD_LOGIC_VECTOR (3 downto 0);
          c_o : out  STD_LOGIC_VECTOR(1 downto 0); -- Transformado em barramento para levar os 2 ultimos sinais de carry para fora
          s_o : out  STD_LOGIC_VECTOR (3 downto 0);
			 
			 carry_in : in STD_LOGIC  -- Adicionado para receber carry de outros blocos
	);
end RCA4BITS;

architecture Behavioral of RCA4BITS is
	 
	component FA
	port(
		a_i, b_i, c_i : in STD_LOGIC; 
		c_o : out STD_LOGIC; 
		s_o : out STD_LOGIC);
	end component;
	
	signal carry : std_logic_vector(4 downto 1);

begin

	-- Substituido HA e inserido FA com o seu carry proveniente de carry_in
	inst0_FA : FA port map
		(a_i => a_i(0) , b_i => b_i(0) , c_i => carry_in, c_o => carry(1) , s_o => s_o(0));
	
	inst1_FA : FA port map
		(a_i => a_i(1) , b_i => b_i(1) , c_i => carry(1) , c_o => carry(2), s_o => s_o(1));
	
	inst2_FA : FA port map
		(a_i => a_i(2) , b_i => b_i(2) , c_i => carry(2) , c_o => carry(3), s_o => s_o(2));
	
	inst3_FA : FA port map
		(a_i => a_i(3) , b_i => b_i(3) , c_i => carry(3) , c_o => carry(4), s_o => s_o(3));

	--Manda ultimo e penultimo carry
	c_o <= carry(4) & carry(3);

end Behavioral;

