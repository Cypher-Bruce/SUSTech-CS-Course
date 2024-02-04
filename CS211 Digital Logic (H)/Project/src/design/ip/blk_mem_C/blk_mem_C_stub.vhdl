-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Dec 23 11:27:32 2023
-- Host        : Cypher_Bruce running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {C:/Users/Cyphe/Documents/SUSTech Assignment/Term 3/Digital
--               Logic/Project/Repo/Electronic-Organ/src/design/ip/blk_mem_C/blk_mem_C_stub.vhdl}
-- Design      : blk_mem_C
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity blk_mem_C is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end blk_mem_C;

architecture stub of blk_mem_C is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,addra[10:0],douta[23:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_1,Vivado 2017.4";
begin
end;
