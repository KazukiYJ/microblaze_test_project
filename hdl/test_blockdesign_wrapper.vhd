--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Thu Jun 21 21:51:15 2018
--Host        : localhost.localdomain running 64-bit CentOS Linux release 7.5.1804 (Core)
--Command     : generate_target test_blockdesign_wrapper.bd
--Design      : test_blockdesign_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_blockdesign_wrapper is
  port (
    led_8bits_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    rs232_uart_rxd : in STD_LOGIC;
    rs232_uart_txd : out STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC
  );
end test_blockdesign_wrapper;

architecture STRUCTURE of test_blockdesign_wrapper is
  component test_blockdesign is
  port (
    sys_diff_clock_clk_n : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC;
    rs232_uart_rxd : in STD_LOGIC;
    rs232_uart_txd : out STD_LOGIC;
    led_8bits_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC
  );
  end component test_blockdesign;
begin
test_blockdesign_i: component test_blockdesign
     port map (
      led_8bits_tri_o(7 downto 0) => led_8bits_tri_o(7 downto 0),
      reset => reset,
      rs232_uart_rxd => rs232_uart_rxd,
      rs232_uart_txd => rs232_uart_txd,
      sys_diff_clock_clk_n => sys_diff_clock_clk_n,
      sys_diff_clock_clk_p => sys_diff_clock_clk_p
    );
end STRUCTURE;
