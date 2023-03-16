----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2023 11:15:19 AM
-- Design Name: 
-- Module Name: tb_cnt_up_down - Behavioral
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

entity tb_cnt_up_down is
end entity tb_cnt_up_down;

architecture testbench of tb_cnt_up_down is

  constant c_CNT_WIDTH         : natural := 3;
  constant c_CLK_100MHZ_PERIOD : time    := 10 ns;

  signal sig_clk_100mhz : std_logic;
  signal sig_rst        : std_logic;
  signal sig_en         : std_logic;
  signal sig_cnt_up     : std_logic;
  signal sig_cnt        : std_logic_vector(c_CNT_WIDTH - 1 downto 0);

begin

  uut_cnt : entity work.cnt_up_down
    generic map (
      g_CNT_WIDTH => c_CNT_WIDTH
    )
    port map (
      clk    => sig_clk_100mhz,
      rst    => sig_rst,
      en     => sig_en,
      cnt_up => sig_cnt_up,
      cnt    => sig_cnt
    );

  p_clk_gen : process is
  begin

    while now < 750 ns loop           

      sig_clk_100mhz <= '0';
      wait for c_CLK_100MHZ_PERIOD / 2;
      sig_clk_100mhz <= '1';
      wait for c_CLK_100MHZ_PERIOD / 2;

    end loop;
    wait;                             

  end process p_clk_gen;

  p_reset_gen : process is
  begin

    sig_rst <= '0';
    wait for 12 ns;

    sig_rst <= '1';
    wait for 70 ns;

    sig_rst <= '0';

    wait;

  end process p_reset_gen;

  p_stimulus : process is
  begin

    report "Stimulus process started";

    sig_en <= '1';

    sig_cnt_up <= '1';
    wait for 380 ns;
    sig_cnt_up <= '0';
    wait for 186 ns;

    sig_en <= '0';
    wait for 86 ns;
    sig_en <= '1';

    report "Stimulus process finished";
    wait;

  end process p_stimulus;

end architecture testbench;
