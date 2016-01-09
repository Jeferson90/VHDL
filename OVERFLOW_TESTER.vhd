----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:36:41 09/27/2012 
-- Design Name: 
-- Module Name:    OVERFLOW_TESTER - Behavioral 
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

entity OVERFLOW_TESTER is
    Port ( c1 : in  STD_LOGIC;
           c2 : in  STD_LOGIC;
           saida : out  STD_LOGIC);
end OVERFLOW_TESTER;

architecture Behavioral of OVERFLOW_TESTER is

begin

saida <= c1 xor c2;


end Behavioral;

