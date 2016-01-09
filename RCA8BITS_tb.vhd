--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:57:04 09/28/2012
-- Design Name:   
-- Module Name:   C:/Users/Jeferson/Documents/Faculdade/10 Semestre/Engenharia de Software Embarcado/Relatorio 4/Projeto VHDL/tarefa2/lab4_t2/RCA8BITS_tb.vhd
-- Project Name:  lab4_t2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RCA8BITS
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
 
ENTITY RCA8BITS_tb IS
END RCA8BITS_tb;
 
ARCHITECTURE behavior OF RCA8BITS_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RCA8BITS
    PORT(
         a_i : IN  std_logic_vector(7 downto 0);
         b_i : IN  std_logic_vector(7 downto 0);
         s_o : OUT  std_logic_vector(7 downto 0);
         c_o : OUT  std_logic;
         v_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a_i : std_logic_vector(7 downto 0) := (others => '0');
   signal b_i : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal s_o : std_logic_vector(7 downto 0);
   signal c_o : std_logic;
   signal v_o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RCA8BITS PORT MAP (
          a_i => a_i,
          b_i => b_i,
          s_o => s_o,
          c_o => c_o,
          v_o => v_o
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
		
		wait for 10 ns;
		
		
		-- Soma 1 [ 55 - 25 = 30 ]
		a_i <= x"37";
		b_i <= x"E7";
		
		wait for 10 ns;
		
		
		-- Soma 2 [-126 + (-4) = -130 ] !!!OVERFLOW!!!
		a_i <= x"82";
		b_i <= x"FC";
		
		wait for 10 ns;
		
		
		--Soma 3 [ -50 + 50 = 0 ]
		a_i <= x"C7";
		b_i <= x"32";
		
		wait for 10 ns;
		
		
		-- Soma 4 [ 75 + (-76) = -1 ]
		a_i <= x"4B";
		b_i <= x"B4";
		
		wait for 10 ns;
		
		
		-- Soma 5 [ 127 + 127 = 354 ]  !!! OVERFLOW !!!
		a_i <= x"7F";
		b_i <= x"7F";
		
		Wait for 10 ns;
		
		
		-- Soma6 [0 + 0 = 0] 
		a_i <= x"00";
		b_i <= x"00";
		
		wait for 10 ns;
		
		
		-- Soma 7 [ -1 + (-1) = -2 ]
		a_i <= x"FF";
		b_i <= x"FF";
		
		wait for 10 ns;
		
		
		-- Soma 8 [ -27 + 78 = 51 ]
		a_i <= x"E5";
		b_i <= x"4E";
		
		
		

      wait;
   end process;

END;
