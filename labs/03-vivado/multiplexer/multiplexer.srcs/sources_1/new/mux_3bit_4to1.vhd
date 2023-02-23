library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_3bit_4to1 is
    Port ( a_i : in STD_LOGIC_VECTOR (2 downto 0);
           b_i : in STD_LOGIC_VECTOR (2 downto 0);
           c_i : in STD_LOGIC_VECTOR (2 downto 0);
           d_i : in STD_LOGIC_VECTOR (2 downto 0);
           sel_i : in STD_LOGIC_VECTOR (1 downto 0);
           f_o : out STD_LOGIC_VECTOR (2 downto 0));
end mux_3bit_4to1;

architecture Behavioral of mux_3bit_4to1 is

begin

y_o <= a_i when sel_i = "00" else
       b_i when sel_i = "01" else
       c_i when sel_i = "11" else
       d_i;

end Behavioral;
