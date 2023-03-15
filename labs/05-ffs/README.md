# Lab 5: Jakub Jureček

### D & T Flip-flops

1. Screenshot with simulated time waveforms. Try to simulate both D- and T-type flip-flops in a single testbench with a maximum duration of 350 ns, including reset. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

![signals](https://user-images.githubusercontent.com/124879295/225421374-67378af5-0517-41f9-8318-0c6c5b647d3f.png)

### JK Flip-flop

1. Listing of VHDL architecture for JK-type flip-flop. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture behavioral of t_ff_rst is 
   signal s_q : std_logic;
   begin
   p_t_ff_rst : process (clk)
      begin
         if rising_edge (clk) then
            if (k = '0') then
               if (j = '1') then
                  s_q  <= '1';
               end if;
            else
               if (j = '0') then
                  s_q  <= '0';
               else
                  s_q  <=  not s_q;
               end if;
            end if;    
         end if;
      end process p_t_ff_rst;

   -- Output ports are permanently connected to local signal
         q     <= s_q;
         q_bar <= not s_q;
      end architecture behavioral;
```

### Shift register

1. Image of `top` level schematic of the 4-bit shift register. Use four D-type flip-flops and connect them properly. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

![SCHEMA](https://user-images.githubusercontent.com/124879295/225419161-5b5d2a8f-1d6a-4e6b-b10c-02f247727ca2.jpg)
