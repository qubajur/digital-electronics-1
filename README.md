# Lab 1: Jakub Jureček

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

   ![Logic function](https://github.com/tomas-fryza/digital-electronics-1/raw/master/labs/01-gates/images/equations.png)

2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of gates is
begin
    f_orig_o <= (not(b_i) and a_i) or (c_i and not(b_i or not(a_i)));
    f_nand_o <= (not(b_i) and a_i) and (c_i nand (not(b_i) nand a_i));
    f_nor_o  <= (not(a_i) or b_i) nor (not(c_i) nor (b_i nor not(a_i)));
end architecture dataflow;
```

3. Complete table with logic functions' values:

   | **c** | **b** |**a** | **f_ORIG** | **f_(N)AND** | **f_(N)OR** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   | 0 | 0 | 0 | 0 | 0 | 0 |
   | 0 | 0 | 1 | 1 | 1 | 1 |
   | 0 | 1 | 0 | 0 | 0 | 0 |
   | 0 | 1 | 1 | 0 | 0 | 0 |
   | 1 | 0 | 0 | 0 | 0 | 0 |
   | 1 | 0 | 1 | 1 | 1 | 1 |
   | 1 | 1 | 0 | 0 | 0 | 0 |
   | 1 | 1 | 1 | 0 | 0 | 0 |

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

  <img width="909" alt="218321623-2c2b99df-dee7-45d1-b2b4-3c90cf033b71" src="https://user-images.githubusercontent.com/124879295/219115001-aaf45744-588d-47dc-ac6c-05f3f05dc7aa.png">

2. Link to your public EDA Playground example:

   [https://www.edaplayground.com/x/jPAT](https://www.edaplayground.com/x/jPAT)
