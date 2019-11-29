-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"
-- CREATED		"Sat Oct 26 22:49:59 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY nios2_quartus2_project IS 
	PORT
	(
		CLOCK_50 :  IN  STD_LOGIC;
		LEDG :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		LCD_DATA : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		LCD_EN, LCD_RW, LCD_RS, LCD_ON: OUT STD_LOGIC;
		SW:   IN  STD_LOGIC_VECTOR(7 DOWNTO 0)
		
	);
END nios2_quartus2_project;

ARCHITECTURE bdf_type OF nios2_quartus2_project IS 


	component first_nios2_system is
		port (
			clk_clk                            : in    std_logic                    := 'X';             -- clk
			led_pio_external_connection_export : out   std_logic_vector(7 downto 0);                    -- export
			reset_reset_n                      : in    std_logic                    := 'X';             -- reset_n
			sw_pio_external_connection_export  : in    std_logic_vector(7 downto 0) := (others => 'X'); -- export
			lcd_external_RS                    : out   std_logic;                                       -- RS
			lcd_external_RW                    : out   std_logic;                                       -- RW
			lcd_external_data                  : inout std_logic_vector(7 downto 0) := (others => 'X'); -- data
			lcd_external_E                     : out   std_logic                                        -- E
		);
	end component first_nios2_system;



	

SIGNAL	vcc :  STD_LOGIC;


BEGIN 
	vcc <= '1';

	u0 : component first_nios2_system
		port map (
			clk_clk                            => CLOCK_50,                            
			led_pio_external_connection_export => LEDG, 
			reset_reset_n                      => vcc,  
			sw_pio_external_connection_export  => SW,  
			lcd_external_RS                    => LCD_RS,      
			lcd_external_RW                    => LCD_RW,     
			lcd_external_data                  => LCD_DATA,       
			lcd_external_E                     => LCD_EN                   
		);

		 


END bdf_type;