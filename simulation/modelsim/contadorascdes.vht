-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/03/2020 08:08:07"
                                                            
-- Vhdl Test Bench template for design  :  pract10
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY contadorascdes_vhd_tst IS
END contadorascdes_vhd_tst;
ARCHITECTURE contadorascdes_arch OF contadorascdes_vhd_tst
IS
-- constants
-- signals
SIGNAL clk : STD_LOGIC:='0';
SIGNAL a_dentrada : STD_LOGIC;
SIGNAL luz_verde : STD_LOGIC;
SIGNAL max : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL luz_roja : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
SIGNAL a_dsalida : STD_LOGIC;
COMPONENT contadorascdes
PORT (
 clk : IN STD_LOGIC;
 a_dentrada : IN STD_LOGIC;
 luz_verde : OUT STD_LOGIC;
 max : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
 s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
 luz_roja : OUT STD_LOGIC;
 reset_n : IN STD_LOGIC;
 a_dsalida : IN STD_LOGIC);
END COMPONENT;
BEGIN
i1 : contadorascdes
PORT MAP (
 -- list connections between master ports and signals
 clk => clk,
 a_dentrada => a_dentrada,
 luz_verde => luz_verde,
 max => max,
 s => s,
 luz_roja => luz_roja,
 reset_n => reset_n,
 a_dsalida => a_dsalida);
init : PROCESS
-- variable declarations
BEGIN
-- code that executes only once
WAIT;
END PROCESS init;

clk <= not clk after 50 ns;
always : PROCESS
BEGIN
 reset_n <= '0';
 a_dentrada <= '0';
 a_dsalida <= '0';
 max <= X"07";
 wait for 160 ns;
 reset_n <= '1';
 wait for 100 ns;
 for n in 0 to 8 loop
 a_dentrada <= '1';
 wait for 500 ns;
 a_dentrada <= '0';
 wait for 600 ns;
 end loop;
 assert s = max
 report "Error el contador no satura"
 severity failure;
 assert luz_roja <= '1'
 report "Error, la salida luz_roja no funciona"
 severity failure;
 for n in 0 to 3 loop
 a_dsalida <= '1';
 wait for 500 ns;
 a_dsalida <= '0';
 wait for 600 ns;
 end loop;
 wait for 100 ns;
 assert s = X"03"
 report "Error: el contador cuenta mal hacia abajo"
 severity failure;
 assert luz_roja <= '0'
 report "Error, la salida luz_verde no funciona"
 severity failure;
 wait for 100 ns;
 assert false
 report "Fin de la simulacion"
 severity failure;
 WAIT;
END PROCESS always;
END contadorascdes_arch;

