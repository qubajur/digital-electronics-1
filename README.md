# Lab 1: Jakub Jureček

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

   ![Snímek obrazovky 2023-02-15 193009](https://user-images.githubusercontent.com/124879295/219120314-dffb304b-40fd-4e01-aa3f-b80138d13f8a.jpg)


2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of gates is
begin
  f_orig_o <= (not(b_i) and a_i) or (c_i and not(b_i or not(a_i)));
  f_nand_o <= not(not(not(b_i) and a_i) and not(c_i and (not(b_i) and a_i)));
  f_nor_o  <= (not(b_i or not(a_i))) or not(not(c_i) or (b_i or not(a_i)));
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

 ![Snímek obrazovky 2023-02-15 191319](https://user-images.githubusercontent.com/124879295/219116909-ac0aefc0-c417-4b49-b3f5-ae7d77095c2d.jpg)


2. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/Gw_Y
