--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:52:56 09/27/2012
-- Design Name:   
-- Module Name:   C:/Users/Jeferson/Documents/Faculdade/10 Semestre/Engenharia de Software Embarcado/Relatorio 4/Projeto VHDL/tarefa1/lab4_t1/RCA4BITS_tb.vhd
-- Project Name:  lab4_t1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RCA4BITS
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RCA4BITS_tb IS
END RCA4BITS_tb;
 
ARCHITECTURE behavior OF RCA4BITS_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RCA4BITS
    PORT(
         a_i : IN  std_logic_vector(3 downto 0);
         b_i : IN  std_logic_vector(3 downto 0);
         c_o : OUT  std_logic;
         s_o : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a_i : std_logic_vector(3 downto 0) := (others => '0');
   signal b_i : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal c_o : std_logic;
   signal s_o : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RCA4BITS PORT MAP (
          a_i => a_i,
          b_i => b_i,
          c_o => c_o,
          s_o => s_o
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here
		
		--Soma 1 [3 + 12] = 15 [1111]
		a_i <= x"3";
		b_i <= x"C";
		
		wait for 10ns;
		
		--Soma 2 [6 + 9] = 15 [1111]
		a_i <= x"6";
		b_i <= x"9";
		
		wait for 10ns;
		
		--Soma 3 [3 + 3] = 6 [0110]
		a_i <= x"3";
		b_i <= x"3";
		
		wait for 10ns;
		
		--Soma 4 [5 + 2] = 7 [0111]
		a_i <= x"5";
		b_i <= x"2";
		
		wait for 10ns;
		
		--Soma 5 [10 + 6] = 16 [10000] [estouro]
		a_i <= x"A";
		b_i <= x"6";
		
		wait for 10ns;
		
				--Soma 4 [5 + 2] = 7 [0111]
		a_i <= x"5";
		b_i <= x"2";
		
		wait for 10ns;
		

      wait;
   end process;

END;
