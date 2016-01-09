----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:40:20 09/06/2012 
-- Design Name: 
-- Module Name:    HA - Behavioral 
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

entity HA is
    Port ( a_i : in  STD_LOGIC;
           b_i : in  STD_LOGIC;
           c_o : out  STD_LOGIC;
           s_o : out  STD_LOGIC);
end HA;

architecture Behavioral of HA is

begin

	s_o <= a_i xor b_i;
	c_o <= a_i and b_i;


end Behavioral;

