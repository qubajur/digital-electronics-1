----------------------------------------------------------
--
--! @title Clock enable
--! @author Tomas Fryza
--! Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
--!
--! @copyright (c) 2019 Tomas Fryza
--! This work is licensed under the terms of the MIT license
--!
--! Generates clock enable signal according to the number
--! of clock pulses `g_MAX`.
--
-- Hardware: Nexys A7-50T, xc7a50ticsg324-1L
-- Software: TerosHDL, Vivado 2020.2, EDA Playground
--
----------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all; 


entity clock_enable is
  generic (
    g_MAX : natural := 5 
  );                      
  port (
    clk : in    std_logic; 
    rst : in    std_logic; 
    ce  : out   std_logic 
  );
end entity clock_enable;


architecture behavioral of clock_enable is

  signal sig_cnt : natural;

begin

  p_clk_enable : process (clk) is
  begin

    if rising_edge(clk) then             
      if (rst = '1') then                 
        sig_cnt <= 0;                     
        ce      <= '0';                  

      elsif (sig_cnt >= (g_MAX - 1)) then
        sig_cnt <= 0;                   
        ce      <= '1';               
      else
        sig_cnt <= sig_cnt + 1;
        ce      <= '0';
      end if;
    end if;

  end process p_clk_enable;

end architecture behavioral;