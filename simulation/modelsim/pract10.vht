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
-- Generated on "12/03/2020 09:29:59"
                                                            
-- Vhdl Test Bench template for design  :  pract10
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pract10_vhd_tst IS
END pract10_vhd_tst;
ARCHITECTURE pract10_arch OF pract10_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d_a : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL d_b : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL entra_coche : STD_LOGIC;
SIGNAL luz_roja : STD_LOGIC;
SIGNAL luz_verde : STD_LOGIC;
SIGNAL max_coche : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset_n : STD_LOGIC;
SIGNAL sale_coche : STD_LOGIC;
COMPONENT pract10
	PORT (
	clk : IN STD_LOGIC;
	d_a : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	d_b : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	entra_coche : IN STD_LOGIC;
	luz_roja : OUT STD_LOGIC;
	luz_verde : OUT STD_LOGIC;
	max_coche : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset_n : IN STD_LOGIC;
	sale_coche : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pract10
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d_a => d_a,
	d_b => d_b,
	entra_coche => entra_coche,
	luz_roja => luz_roja,
	luz_verde => luz_verde,
	max_coche => max_coche,
	reset_n => reset_n,
	sale_coche => sale_coche
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END pract10_arch;
