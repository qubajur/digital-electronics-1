# Lab 2: Jakub Jureček

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

![Greater_than](https://user-images.githubusercontent.com/124879295/220657470-c7066619-b402-440d-acb1-8bdc51539aa4.jpg)

   Less than:

![Less_than](https://user-images.githubusercontent.com/124879295/220657486-2e00ab7b-671c-4280-8b15-75fd02334748.jpg)

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

![Snímek obrazovky 2023-02-22 140729](https://user-images.githubusercontent.com/124879295/220628258-99a0b81a-0f2d-463b-aa1a-2ef29757672f.jpg)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx??**

```vhdl
       p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started";

        -- First test case ...
        -- 63 => last two digits of my id - a = 0110, b = 0011
        s_b <= "0011"; s_a <= "0110"; wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If true, then do not report anything
        -- If false, then report the following error
        report "Input combination b=0011, a=0110 FAILED" severity error;


        s_b <= "1111"; s_a <= "1111"; wait for 100 ns;
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '1') and
                (s_B_less_A    = '0'))
        report "Input combination b=1111, a=1111 FAILED" severity error;
        s_b <= "0000"; s_a <= "1111"; wait for 100 ns;
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        report "Input combination b=0000, a=1111 FAILED" severity error;
        s_b <= "1111"; s_a <= "0000"; wait for 100 ns;
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        report "Input combination b=1111, a=0000 FAILED" severity error;


        -- Report a note at the end of stimulus process
        report "Stimulus process finished";
        wait; -- Data generation process is suspended forever
    end process p_stimulus;
```

2. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/JaAL
