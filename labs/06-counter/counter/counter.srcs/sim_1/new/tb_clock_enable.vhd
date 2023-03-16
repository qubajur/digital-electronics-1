----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2023 11:12:44 AM
-- Design Name: 
-- Module Name: tb_clock_enable - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;


entity tb_clock_enable is

end entity tb_clock_enable;

architecture testbench of tb_clock_enable is

  constant c_MAX               : natural := 10;
  constant c_CLK_100MHZ_PERIOD : time    := 10 ns;

  signal sig_clk_100mhz : std_logic;
  signal sig_rst        : std_logic;
  signal sig_ce         : std_logic;

begin

  uut_ce : entity work.clock_enable
    generic map (
      g_MAX => c_MAX
    ) 
    port map (
      clk => sig_clk_100mhz,
      rst => sig_rst,
      ce  => sig_ce
    );

  p_clk_gen : process is
  begin

    while now < 750 ns loop            
      sig_clk_100mhz <= '0';
      wait for c_CLK_100MHZ_PERIOD / 2;
      sig_clk_100mhz <= '1';
      wait for c_CLK_100MHZ_PERIOD / 4;

    end loop;
    wait;                              

  end process p_clk_gen;

  p_reset_gen : process is
  begin

    sig_rst <= '0';
    wait for 28 ns;

    sig_rst <= '1';
    wait for 153 ns;

    sig_rst <= '0';

    wait;

  end process p_reset_gen;

  p_stimulus : process is
  begin

    report "Stimulus process started";
    report "Stimulus process finished";
    wait;

  end process p_stimulus;

end architecture testbench;
