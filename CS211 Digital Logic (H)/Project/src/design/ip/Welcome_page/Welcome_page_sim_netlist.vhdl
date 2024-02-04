-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Dec 23 11:29:15 2023
-- Host        : Cypher_Bruce running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {C:/Users/Cyphe/Documents/SUSTech Assignment/Term 3/Digital
--               Logic/Project/Repo/Electronic-Organ/src/design/ip/Welcome_page/Welcome_page_sim_netlist.vhdl}
-- Design      : Welcome_page
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Welcome_page_blk_mem_gen_mux is
  port (
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    p_39_out : in STD_LOGIC_VECTOR ( 17 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPADOP : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_30\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_31\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_32\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_33\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_34\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_35\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_36\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Welcome_page_blk_mem_gen_mux : entity is "blk_mem_gen_mux";
end Welcome_page_blk_mem_gen_mux;

architecture STRUCTURE of Welcome_page_blk_mem_gen_mux is
  signal \douta[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sel_pipe_d1 : STD_LOGIC_VECTOR ( 5 downto 0 );
begin
\douta[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1\(0),
      I2 => sel_pipe_d1(4),
      I3 => sel_pipe_d1(5),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0),
      O => douta(0)
    );
\douta[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[10]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[10]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[10]_INST_0_i_3_n_0\,
      O => douta(10)
    );
\douta[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(4),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => DOADO(4),
      I5 => sel_pipe_d1(3),
      O => \douta[10]_INST_0_i_1_n_0\
    );
\douta[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(4),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(4),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(4),
      O => \douta[10]_INST_0_i_2_n_0\
    );
\douta[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(4),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(4),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(4),
      O => \douta[10]_INST_0_i_3_n_0\
    );
\douta[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[11]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[11]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[11]_INST_0_i_3_n_0\,
      O => douta(11)
    );
\douta[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(5),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => DOADO(5),
      I5 => sel_pipe_d1(3),
      O => \douta[11]_INST_0_i_1_n_0\
    );
\douta[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(5),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(5),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(5),
      O => \douta[11]_INST_0_i_2_n_0\
    );
\douta[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(5),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(5),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(5),
      O => \douta[11]_INST_0_i_3_n_0\
    );
\douta[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[12]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[12]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[12]_INST_0_i_3_n_0\,
      O => douta(12)
    );
\douta[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(6),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => DOADO(6),
      I5 => sel_pipe_d1(3),
      O => \douta[12]_INST_0_i_1_n_0\
    );
\douta[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(6),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(6),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(6),
      O => \douta[12]_INST_0_i_2_n_0\
    );
\douta[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(6),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(6),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(6),
      O => \douta[12]_INST_0_i_3_n_0\
    );
\douta[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[13]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[13]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[13]_INST_0_i_3_n_0\,
      O => douta(13)
    );
\douta[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(7),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => DOADO(7),
      I5 => sel_pipe_d1(3),
      O => \douta[13]_INST_0_i_1_n_0\
    );
\douta[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(7),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(7),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(7),
      O => \douta[13]_INST_0_i_2_n_0\
    );
\douta[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(7),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(7),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(7),
      O => \douta[13]_INST_0_i_3_n_0\
    );
\douta[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[14]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[14]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[14]_INST_0_i_3_n_0\,
      O => douta(14)
    );
\douta[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(8),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => DOPADOP(0),
      I5 => sel_pipe_d1(3),
      O => \douta[14]_INST_0_i_1_n_0\
    );
\douta[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(0),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(0),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(0),
      O => \douta[14]_INST_0_i_2_n_0\
    );
\douta[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(0),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(0),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(0),
      O => \douta[14]_INST_0_i_3_n_0\
    );
\douta[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[15]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[15]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[15]_INST_0_i_3_n_0\,
      O => douta(15)
    );
\douta[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(9),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(0),
      I5 => sel_pipe_d1(3),
      O => \douta[15]_INST_0_i_1_n_0\
    );
\douta[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(0),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(0),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(0),
      O => \douta[15]_INST_0_i_2_n_0\
    );
\douta[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(0),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(0),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(0),
      O => \douta[15]_INST_0_i_3_n_0\
    );
\douta[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[16]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[16]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[16]_INST_0_i_3_n_0\,
      O => douta(16)
    );
\douta[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(10),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(1),
      I5 => sel_pipe_d1(3),
      O => \douta[16]_INST_0_i_1_n_0\
    );
\douta[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(1),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(1),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(1),
      O => \douta[16]_INST_0_i_2_n_0\
    );
\douta[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(1),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(1),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(1),
      O => \douta[16]_INST_0_i_3_n_0\
    );
\douta[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[17]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[17]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[17]_INST_0_i_3_n_0\,
      O => douta(17)
    );
\douta[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(11),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(2),
      I5 => sel_pipe_d1(3),
      O => \douta[17]_INST_0_i_1_n_0\
    );
\douta[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(2),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(2),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(2),
      O => \douta[17]_INST_0_i_2_n_0\
    );
\douta[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(2),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(2),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(2),
      O => \douta[17]_INST_0_i_3_n_0\
    );
\douta[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[18]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[18]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[18]_INST_0_i_3_n_0\,
      O => douta(18)
    );
\douta[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(12),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(3),
      I5 => sel_pipe_d1(3),
      O => \douta[18]_INST_0_i_1_n_0\
    );
\douta[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(3),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(3),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(3),
      O => \douta[18]_INST_0_i_2_n_0\
    );
\douta[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(3),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(3),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(3),
      O => \douta[18]_INST_0_i_3_n_0\
    );
\douta[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[19]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[19]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[19]_INST_0_i_3_n_0\,
      O => douta(19)
    );
\douta[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(13),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(4),
      I5 => sel_pipe_d1(3),
      O => \douta[19]_INST_0_i_1_n_0\
    );
\douta[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(4),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(4),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(4),
      O => \douta[19]_INST_0_i_2_n_0\
    );
\douta[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(4),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(4),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(4),
      O => \douta[19]_INST_0_i_3_n_0\
    );
\douta[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1\(1),
      I2 => sel_pipe_d1(4),
      I3 => sel_pipe_d1(5),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      O => douta(1)
    );
\douta[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[20]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[20]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[20]_INST_0_i_3_n_0\,
      O => douta(20)
    );
\douta[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(14),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(5),
      I5 => sel_pipe_d1(3),
      O => \douta[20]_INST_0_i_1_n_0\
    );
\douta[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(5),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(5),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(5),
      O => \douta[20]_INST_0_i_2_n_0\
    );
\douta[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(5),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(5),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(5),
      O => \douta[20]_INST_0_i_3_n_0\
    );
\douta[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[21]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[21]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[21]_INST_0_i_3_n_0\,
      O => douta(21)
    );
\douta[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(15),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(6),
      I5 => sel_pipe_d1(3),
      O => \douta[21]_INST_0_i_1_n_0\
    );
\douta[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(6),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(6),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(6),
      O => \douta[21]_INST_0_i_2_n_0\
    );
\douta[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(6),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(6),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(6),
      O => \douta[21]_INST_0_i_3_n_0\
    );
\douta[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[22]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[22]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[22]_INST_0_i_3_n_0\,
      O => douta(22)
    );
\douta[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(16),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(7),
      I5 => sel_pipe_d1(3),
      O => \douta[22]_INST_0_i_1_n_0\
    );
\douta[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(7),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(7),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(7),
      O => \douta[22]_INST_0_i_2_n_0\
    );
\douta[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(7),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(7),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(7),
      O => \douta[22]_INST_0_i_3_n_0\
    );
\douta[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[23]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[23]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[23]_INST_0_i_3_n_0\,
      O => douta(23)
    );
\douta[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(17),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\(0),
      I5 => sel_pipe_d1(3),
      O => \douta[23]_INST_0_i_1_n_0\
    );
\douta[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_33\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_34\(0),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_35\(0),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_36\(0),
      O => \douta[23]_INST_0_i_2_n_0\
    );
\douta[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_30\(0),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_31\(0),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_32\(0),
      O => \douta[23]_INST_0_i_3_n_0\
    );
\douta[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2\(0),
      I2 => sel_pipe_d1(2),
      I3 => sel_pipe_d1(4),
      I4 => sel_pipe_d1(5),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      O => douta(2)
    );
\douta[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2\(1),
      I2 => sel_pipe_d1(2),
      I3 => sel_pipe_d1(4),
      I4 => sel_pipe_d1(5),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(0),
      O => douta(3)
    );
\douta[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2\(2),
      I2 => sel_pipe_d1(2),
      I3 => sel_pipe_d1(4),
      I4 => sel_pipe_d1(5),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(0),
      O => douta(4)
    );
\douta[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => sel_pipe_d1(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2\(3),
      I2 => sel_pipe_d1(2),
      I3 => sel_pipe_d1(4),
      I4 => sel_pipe_d1(5),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(0),
      O => douta(5)
    );
\douta[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[6]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[6]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[6]_INST_0_i_3_n_0\,
      O => douta(6)
    );
\douta[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(0),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => DOADO(0),
      I5 => sel_pipe_d1(3),
      O => \douta[6]_INST_0_i_1_n_0\
    );
\douta[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(0),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(0),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(0),
      O => \douta[6]_INST_0_i_2_n_0\
    );
\douta[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(0),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(0),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(0),
      O => \douta[6]_INST_0_i_3_n_0\
    );
\douta[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[7]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[7]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[7]_INST_0_i_3_n_0\,
      O => douta(7)
    );
\douta[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(1),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => DOADO(1),
      I5 => sel_pipe_d1(3),
      O => \douta[7]_INST_0_i_1_n_0\
    );
\douta[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(1),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(1),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(1),
      O => \douta[7]_INST_0_i_2_n_0\
    );
\douta[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(1),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(1),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(1),
      O => \douta[7]_INST_0_i_3_n_0\
    );
\douta[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[8]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[8]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[8]_INST_0_i_3_n_0\,
      O => douta(8)
    );
\douta[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(2),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => DOADO(2),
      I5 => sel_pipe_d1(3),
      O => \douta[8]_INST_0_i_1_n_0\
    );
\douta[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(2),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(2),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(2),
      O => \douta[8]_INST_0_i_2_n_0\
    );
\douta[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(2),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(2),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(2),
      O => \douta[8]_INST_0_i_3_n_0\
    );
\douta[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[9]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(5),
      I2 => \douta[9]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(4),
      I4 => \douta[9]_INST_0_i_3_n_0\,
      O => douta(9)
    );
\douta[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => sel_pipe_d1(2),
      I1 => p_39_out(3),
      I2 => sel_pipe_d1(0),
      I3 => sel_pipe_d1(1),
      I4 => DOADO(3),
      I5 => sel_pipe_d1(3),
      O => \douta[9]_INST_0_i_1_n_0\
    );
\douta[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(3),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(3),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(3),
      O => \douta[9]_INST_0_i_2_n_0\
    );
\douta[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(3),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(3),
      I4 => sel_pipe_d1(2),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(3),
      O => \douta[9]_INST_0_i_3_n_0\
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => sel_pipe(0),
      Q => sel_pipe_d1(0),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => sel_pipe(1),
      Q => sel_pipe_d1(1),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => sel_pipe(2),
      Q => sel_pipe_d1(2),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => sel_pipe(3),
      Q => sel_pipe_d1(3),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => sel_pipe(4),
      Q => sel_pipe_d1(4),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => sel_pipe(5),
      Q => sel_pipe_d1(5),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(0),
      Q => sel_pipe(0),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(1),
      Q => sel_pipe(1),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(2),
      Q => sel_pipe(2),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(3),
      Q => sel_pipe(3),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(4),
      Q => sel_pipe(4),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(5),
      Q => sel_pipe(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Welcome_page_blk_mem_gen_prim_wrapper_init is
  port (
    \douta[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Welcome_page_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end Welcome_page_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of Welcome_page_blk_mem_gen_prim_wrapper_init is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0AFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFF001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFF",
      INIT_0F => X"FFFFFFFFFFC1C17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFF",
      INIT_10 => X"3E0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
      INIT_12 => X"FFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E01FFFFFFF",
      INIT_13 => X"FFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E02FFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F807FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFF9FC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFF",
      INIT_16 => X"FFFFFFFFF1FC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFF",
      INIT_17 => X"C01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFE0FFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87",
      INIT_19 => X"FFFFFFF001FF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E02FFFFFFFF",
      INIT_1A => X"F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87E01FFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F00FFFFFFFFFFFFFFFE3FFFFFFFFC0007",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFC3F407FFFFFFFFFFFFFF80FFFFFFFF80FE3F1FFFFFFFFF",
      INIT_1D => X"FFFFFFFE2FC03FFFFFFFFFFFFFF007FFFFFFF01FF1F3FFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"05FFFFFFFF0FFFFF003FFFFFFE03FF9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"3FFFE061FFFFFFE07FFCE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FA",
      INIT_20 => X"FFFC07FFE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FE01FFFFFFFE0",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C00FFFFFFFC01FFFE0F0FFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFC5E00FFFFFFF861FFFE0F8FFFFFFC07FFE4F",
      INIT_23 => X"FFFFFFFFFFFFFFFFFC1F80FFFFFFF8F0FFFF0F87FFFFFC07FFF1FFFFFFFFFFFF",
      INIT_24 => X"FFFFFFE0F007FFFFFF1F8FFFF07C7FFFFF807FFF3FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"7FFFFFF1FC7FFF07C3FFFFF807FFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFF87C3FFFFF807FFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F00",
      INIT_27 => X"F807FF9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FC07FFFFFF3FC7",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3801FFFFFF3FE3FFF83E1FFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF7E01FFFFFF3FE3FFFC3E1FFFFF807FF3BFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFE2E00FFFFFF3FF1FFFC1E1FFFFF807FE7BFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFF9E01FFFFFFFFF1FFFE1E0FFFFF807FCFBFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFF8FFFF0F0FFFFF807F9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FF0F0FFFFF807F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E017",
      INIT_2E => X"03E7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA00FFFFFFFFF8FF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1007FFFFFFFFCFFFF8F07FFFF8",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFE180BFFFFFFFFC7FFF8707FFFF803EFF7FFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFF8407FFFFFFFFC7FFFC707FFFF803CFE7FFFFFFFFFFFFFF7F",
      INIT_32 => X"FFFFF8807FFFFFFFFE3FFFE307FFFF803DFCFFFFFFFFFFFFFFC1FFFFFFFFFFFF",
      INIT_33 => X"FFFFFFE3FFFE383FFFF803DFDFFFFFFFFFFFFFFC0FFFCFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"F183FFFF801CF3FFFFFFFFFFFFFF807FF83FFFFFFFFFFFFFFFFFFFFFFF8801FF",
      INIT_35 => X"E07FFFFFFFFFFFFFF803FF81FFFFFFFFFFFFFFFFFFFFFFFE603FFFFFFFFF3FFF",
      INIT_36 => X"FFFFFF809FF80FFFFFFFFFFFFFFFFFF03FFFF802FFFFFFFFF1FFFF183FFFFC01",
      INIT_37 => X"837FFFFFFFFFFFFFFFFC00FFFF801FFFF83FFF1FFFF883FFFFC01FDFFFFFFFFF",
      INIT_38 => X"FFFFFFFF8007FFF801FFFE00FFF8FFFF801FFFFC01FFFFFFFFFFC1FFFFFC0DFF",
      INIT_39 => X"1FFF800FFFC003FF8FFFFC01FFFFC01FFFFFFFFFF007FFFFC0EFF837FC1FFFFF",
      INIT_3A => X"001FF8FFFFE01FFFFC00FFFFFFFFFE001FFFFC0EFFC3BFC0FFFF87F0FFFFF1F0",
      INIT_3B => X"01FFFFC00FFFFFFFFFE000FFFFE077FC3DFC0FFFF03F07FFFF3FC0FFFD007FFC",
      INIT_3C => X"FFFFFFFE0007FFFE073FC3EFC0FFFE3DF83FFFF3FC0FFFE007FF8000FFC7FFFE",
      INIT_3D => X"3FFFE07BFC1EFE07FFE7EFC1FFFF3FE07FFF00FFF80007FC7FFFF01FFFFE00FF",
      INIT_3E => X"F7E07FFE7E7C0FFFF3FF03FFF003FF87C03FE3FFFF00FFFFE00FFFFFFFFFC000",
      INIT_3F => X"E07FFFBFF01FFF003FF87F01FE3FFFF80FFFFE00FFFFFFFFFC1E01FFFF03DFE1",
      INIT_40 => X"FFF003FFC7F81FE1FFFF80FFFFE007FFFFFFFFE3F80FFFF03DFE1FBF07FFCFF7",
      INIT_41 => X"C0FF1FFFFC07FFFF007FFFFFFFFE3FC07FFF03EFE0FBF03FFCFF3F03FFFFFF81",
      INIT_42 => X"7FFFF007FFFFFFFFE3FE07FFF81F7F0FDF03FFCFFBF01FFFFFFC0FFF801FFC7F",
      INIT_43 => X"FFFFFE3FF03FFF81F7F0FEF83FFC7F9F81FFFFFFC0FFFC03FFC7FC07F1FFFFC0",
      INIT_44 => X"FFF81FBF0FEF81FFC7FDFC07FFFFFE0BFFC03FFE3FE07F8FFFFE03FFFF007FFF",
      INIT_45 => X"780FFC7FDFC03FFFFFE03FFE01FFE3FF03F8FFFFE01FFFF007FFFFFFFFF1FF03",
      INIT_46 => X"07FFFFFE05FFE01FFF1FF03FC7FFFE01FFFF803FFFFFDFFF1FF81FFFC0FDF87F",
      INIT_47 => X"FE00FFF8FF83FC7FFFE00FFFF803FFFFFDFFF8FF81FFFC0FDF87F3C1FFE7FDFE",
      INIT_48 => X"1FC7FFFF007FFF803FFFFFEFFFC7FC0FFFC0FEF87FBC0FFE7FDFE01FFFFFF01F",
      INIT_49 => X"FFF803FFFFFEFFFE3FC0FFFC07F7C3FDC0FFE7FCFF03FFFFFF00FFE01FFFC7F8",
      INIT_4A => X"F7FFF9FE0FFFE07F7C3FCE0FFE3FCFF02FFFFFF01FFF01FFFE3FC1FE3FFFF007",
      INIT_4B => X"FE07FBC3FEE07FF3FCFF80FFFFFF80FFF80FFFF8FC1FE3FFFF063FFF801FFFFF",
      INIT_4C => X"03FF3FCFF81FFFFFF807FF80FFFFFFC0FF1FFFF021FFFC01FFFFFF7FFFE7E07F",
      INIT_4D => X"7FFFFF80FFF807FFFFFE0FF1FFFF031FFFC01FFFFFFBFFFFFE03FFE07FDC1FF6",
      INIT_4E => X"803FFFFFE0FF0FFFF038FFFC01FFFFFFBFFFFFF03FFE07FEE1FF303FF1FDFFC0",
      INIT_4F => X"F8FFFF03C7FFC01FFFFFFDFFFFFF07FFE03FE01FF801FF9FDFFC07FFFFF807FF",
      INIT_50 => X"FE00FFFFFFDFFFFFF03FFF03FF01FFC07FF9FDFFC07FFFFF803FF803FFFFFE0F",
      INIT_51 => X"FFFFFF03FFF03FF83FFC06FFCFDFFE03FFFFFC11FFC0DFFFFFE0FF8FFFF03C3F",
      INIT_52 => X"03FFE7FFE077FCF9FFE03FFFFFC01FFC05FFFFFE0FFC7FFF01E3FFE00FFFFFFE",
      INIT_53 => X"FFE7BFFE05FFFFFC00FF806FFFFFE07FC7FFF01F1FFE00FFFFFFFFFFFFF01FFF",
      INIT_54 => X"FFFFC0D7FE03FFFFFE07FE3FFF01F0FFE00FFFFFFF7FFFFF02FFF03FFFFFFF0F",
      INIT_55 => X"77FFFFE07FE3FFF01F87FF00FFFFFFFBFFFFF02FFF03FFFFFFFFFBFE73FFE07F",
      INIT_56 => X"1FFF03FC3FF00FFFFFFFBFFFFF037FF03FFFFFFFFFDFF37FFE06FFFFFC0EFFE0",
      INIT_57 => X"007FFFFFFDFFFFF03FFF03FFFFFFFFFEFF87FFE077FFFFC0E3FC07BFFFFE0FFF",
      INIT_58 => X"FFFF07BFF03FFFFFFFFFF7F8FFFE07BFFFFC1E5FC03DFFFFE0FFF1FFF03FE3FF",
      INIT_59 => X"FFFFFFFFFFBF8FFFE07BFFFFC1E9FE03DFFFFE0FFF8FFF03FE1FF007FFFFFFEF",
      INIT_5A => X"607FFE07DFFFFC1F1FE07EFFFFE0FFF8FFF03FF0FF007FFFFFFF7FFFF07DFF03",
      INIT_5B => X"FF81F17F03F7FFFC1FFFC7FE03FF87F00FFFFFFFF7FFFF07CFF03FFFFFFFFFFC",
      INIT_5C => X"BFFFC1FFFC3FE07FFC3F00FFFFFFFFBFFFF07EFF03FFFFFFFFFFF063FFE07EFF",
      INIT_5D => X"FC07FFE1F00FFFFFFFFDFFFE0FF7F03FFFFFFFFFFFFF1FFC0FF7FFF83F87E03F",
      INIT_5E => X"FFFFFFFFE7FFC0FF1E03FFFFFFFFFFFFF8FFC0FFBFFF03FC3E07FDFFF83FFFE1",
      INIT_5F => X"FC1FF8007FFFFFFFFFFFFFC7F80FFCFFE07FD1E03FE7FF03FFFF0700FFFF0E00",
      INIT_60 => X"FFFFFFFFFFFE1F01FFE3FC0FFE8F0FFF1FE07FFFF8000FFFF8001FFFFFFFFF3F",
      INIT_61 => X"F0003FFF0001FFF040FFF8300FFFFFC001FFFFC001FFFFFFFFF8FF03FFC007FF",
      INIT_62 => X"3FFFA017FFE003FFFFFE003FFFFE003FFFFFFFFFC1807FFE00FFFFFFFFFFFFFF",
      INIT_63 => X"80FFFFFFF80FFFFFF807FFFFFFFFFF001FFFF01FFFFFFFFFFFFFFFC007FFFC00",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFC07FFFF83FFFFFFFFFFFFFFFF01FFFFF00FFFFD00FFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFF3",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[0]\(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    \douta[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__2_n_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(13 downto 1) => addra(12 downto 0),
      ADDRARDADDR(0) => '0',
      ADDRBWRADDR(13 downto 0) => B"00000000000000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 2),
      DOADO(1 downto 0) => \douta[1]\(1 downto 0),
      DOBDO(15 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__2_n_0\,
      ENBWREN => '0',
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => ena,
      I1 => addra(15),
      I2 => addra(14),
      I3 => addra(13),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  port (
    \douta[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized1\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF31FFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFE002FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFF",
      INIT_0F => X"FFFFFFFFFFE1C17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFF",
      INIT_10 => X"3E0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC",
      INIT_12 => X"FFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E03FFFFFFF",
      INIT_13 => X"FFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F80FFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F80FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFE8FC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFF",
      INIT_16 => X"FFFFFFFFF87C03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFF",
      INIT_17 => X"C03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFE0FFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87",
      INIT_19 => X"FFFFFFF001FF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83F00FFFFFFFF",
      INIT_1A => X"F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E00FFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F807FFFFFFFFFFFFFFE3FFFFFFFFC0007",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFF1FC0BFFFFFFFFFFFFFF80FFFFFFFF80FE3F1FFFFFFFFF",
      INIT_1D => X"FFFFFFFF3F803FFFFFFFFFFFFFF007FFFFFFF01FF1F3FFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"01FFFFFFFF0FFFFF003FFFFFFE03FF9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"3FFFE061FFFFFFE07FFCE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FE",
      INIT_20 => X"FFFC07FFE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF47C03FFFFFFFE0",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F00FFFFFFFC01FFFE0F0FFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F00FFFFFFF861FFFE0F8FFFFFFC07FFE4F",
      INIT_23 => X"FFFFFFFFFFFFFFFFFE3F807FFFFFF8F0FFFF0F87FFFFFC07FFF1FFFFFFFFFFFF",
      INIT_24 => X"FFFFFFF0F007FFFFFF1F8FFFF07C7FFFFF807FFF3FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"3FFFFFF1FC7FFF07C3FFFFF807FFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFF87C3FFFFF807FFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0700",
      INIT_27 => X"F807FF9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C03FFFFFF3FC7",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C07FFFFFF3FE3FFF83E1FFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFE5C03FFFFFF3FE3FFFC3E1FFFFF807FF3BFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFF3E01FFFFFF3FF1FFFC1E1FFFFF807FE7BFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFF1E01FFFFFFFFF1FFFE1E0FFFFF807FCFBFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFF8FFFF0F0FFFFF807F9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FF0F0FFFFF807F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87007",
      INIT_2E => X"03E7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF00FFFFFFFFF8FF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC780FFFFFFFFFCFFFF8F07FFFF8",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFF3003FFFFFFFFC7FFF8707FFFF803EFF7FFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFF1807FFFFFFFFC7FFFC707FFFF803CFE7FFFFFFFFFFFFFF7F",
      INIT_32 => X"FFFFF8807FFFFFFFFE3FFFE307FFFF803DFCFFFFFFFFFFFFFFC1FFFFFFFFFFFF",
      INIT_33 => X"FFFFFFE3FFFE383FFFF803DFDFFFFFFFFFFFFFFC0FFFCFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"F183FFFF801CF3FFFFFFFFFFFFFF807FF83FFFFFFFFFFFFFFFFFFFFFFFA801FF",
      INIT_35 => X"E07FFFFFFFFFFFFFF803FF81FFFFFFFFFFFFFFFFFFFFFFFE601FFFFFFFFF3FFF",
      INIT_36 => X"FFFFFF809FF80FFFFFFFFFFFFFFFFFF03FFFF002FFFFFFFFF1FFFF183FFFFC01",
      INIT_37 => X"837FFFFFFFFFFFFFFFFC00FFFF000FFFF83FFF1FFFF883FFFFC01FDFFFFFFFFF",
      INIT_38 => X"FFFFFFFF8007FFF801FFFE00FFF8FFFF801FFFFC01FFFFFFFFFFC1FFFFFC0DFF",
      INIT_39 => X"1FFF800FFFC003FF8FFFFC01FFFFC01FFFFFFFFFF007FFFFC0EFF837FC1FFFFF",
      INIT_3A => X"001FF8FFFFE01FFFFC00FFFFFFFFFE001FFFFC0EFFC3BFC0FFFF87F0FFFFF1F0",
      INIT_3B => X"01FFFFC00FFFFFFFFFE000FFFFE077FC3DFC0FFFF03F07FFFF3FC0FFFD00FFFC",
      INIT_3C => X"FFFFFFFE0007FFFE073FC3EFC0FFFE3DF83FFFF3FC0FFFF80FFF8000FFC7FFFE",
      INIT_3D => X"3FFFE07BFC1EFE07FFE7EFC1FFFF3FE07FFF007FF80007FC7FFFF01FFFFE00FF",
      INIT_3E => X"F7E07FFE7E7C0FFFF3FF03FFF007FF87C03FE3FFFF00FFFFE00FFFFFFFFFC000",
      INIT_3F => X"E07FFFBFF01FFF803FF87F01FE3FFFF80FFFFE00FFFFFFFFFC1E01FFFF03DFE1",
      INIT_40 => X"FFF407FFC7F81FE1FFFF80FFFFE007FFFFFFFFE3F80FFFF03DFE1FBF07FFCFF7",
      INIT_41 => X"C0FF1FFFFC07FFFF007FFFFFFFFE3FC07FFF03EFE0FBF03FFCFF3F03FFFFFF81",
      INIT_42 => X"7FFFF007FFFFFFFFE3FE07FFF81F7F0FDF03FFCFFBF01FFFFFFC0FFFC01FFC7F",
      INIT_43 => X"FFFFFE3FF03FFF81F7F0FEF83FFC7F9F81FFFFFFC0FFF803FFC7FC07F1FFFFC0",
      INIT_44 => X"FFF81FBF0FEF81FFC7FDFC0FFFFFFE0BFFC01FFE3FE07F8FFFFE03FFFF007FFF",
      INIT_45 => X"781FFC7FDFC07FFFFFE07FFE01FFE3FF03F8FFFFE01FFFF007FFFFFFFFF1FF03",
      INIT_46 => X"07FFFFFE03FFC01FFF1FF03FC7FFFE01FFFF803FFFFFDFFF1FF81FFFC0FDF87F",
      INIT_47 => X"FE00FFF8FF83FC7FFFE00FFFF803FFFFFDFFF8FF81FFFC0FDF87F3C1FFE7FDFE",
      INIT_48 => X"1FC7FFFF007FFF803FFFFFEFFFC7FC0FFFC0FEF87FBC07FE7FDFE01FFFFFF03F",
      INIT_49 => X"FFF803FFFFFEFFFE3FC0FFFC07F7C3FDC07FE7FCFF01FFFFFF03FFF01FFFC7F8",
      INIT_4A => X"F7FFF9FE0FFFE07F7C3FCE0FFE3FCFF03FFFFFF00FFF01FFFE3FC1FE3FFFF007",
      INIT_4B => X"FE07FBC3FEE03FF3FCFF81FFFFFF80FFE80FFFF8FC1FE3FFFF063FFF801FFFFF",
      INIT_4C => X"03FF3FCFF80FFFFFF807FF80FFFFFFC0FF1FFFF021FFFC01FFFFFF7FFFE7E07F",
      INIT_4D => X"7FFFFF80FFF007FFFFFE0FF1FFFF031FFFC01FFFFFFBFFFFFE07FFE07FDC1FF6",
      INIT_4E => X"803FFFFFE0FF0FFFF038FFFC01FFFFFFBFFFFFF03FFE07FEE1FF303FF1FDFFC0",
      INIT_4F => X"F8FFFF03C7FFC01FFFFFFDFFFFFF03FFE03FE01FF801FF9FDFFC07FFFFF807FF",
      INIT_50 => X"FE00FFFFFFDFFFFFF03FFF03FF01FFC07FF9FDFFC07FFFFF803FF803FFFFFE0F",
      INIT_51 => X"FFFFFF03FFF03FF83FFC06FFCFDFFE03FFFFFC1BFFC0DFFFFFE0FF8FFFF03C3F",
      INIT_52 => X"03FFE7FFE077FCF9FFE03FFFFFC02FFC01FFFFFE0FFC7FFF01E3FFE00FFFFFFE",
      INIT_53 => X"FFE7BFFE01FFFFFC05FFC06FFFFFE07FC7FFF01F1FFE00FFFFFFFFFFFFF01FFF",
      INIT_54 => X"FFFFC0CFFE07FFFFFE07FE3FFF01F0FFE00FFFFFFF7FFFFF02FFF03FFFFFFF0F",
      INIT_55 => X"37FFFFE07FE3FFF01F87FF00FFFFFFFBFFFFF02FFF03FFFFFFFFFBFE73FFE07F",
      INIT_56 => X"1FFF03FC3FF00FFFFFFFBFFFFF037FF03FFFFFFFFFDFF37FFE06FFFFFC0C7FC0",
      INIT_57 => X"007FFFFFFDFFFFF03FFF03FFFFFFFFFEFF87FFE077FFFFC0C7FE07BFFFFE0FFF",
      INIT_58 => X"FFFF07BFF03FFFFFFFFFF7F8FFFE07BFFFFC1F1FC07DFFFFE0FFF1FFF03FE3FF",
      INIT_59 => X"FFFFFFFFFFBF8FFFE07BFFFFC1F9FE03DFFFFE0FFF8FFF03FE1FF007FFFFFFEF",
      INIT_5A => X"607FFE07DFFFFC1F3FF03EFFFFE0FFF8FFF03FF0FF007FFFFFFF7FFFF07DFF03",
      INIT_5B => X"FF81F17E07F7FFFC1FFFC7FE03FF87F00FFFFFFFF7FFFF07CFF03FFFFFFFFFFC",
      INIT_5C => X"BFFFC1FFFC3FE07FFC3F00FFFFFFFFBFFFF07EFF03FFFFFFFFFFF063FFE07EFF",
      INIT_5D => X"FC07FFE1F00FFFFFFFFDFFFE0FF7F03FFFFFFFFFFFFF1FFC0FF7FFF83F87E03F",
      INIT_5E => X"FFFFFFFFE7FFC0FF1E03FFFFFFFFFFFFF8FFC0FFBFFF03FE3E03FDFFF83FFFE1",
      INIT_5F => X"FC1FF8007FFFFFFFFFFFFFC7F80FFCFFE07FF3E07FE7FF03FFFF0700FFFF0E00",
      INIT_60 => X"FFFFFFFFFFFE1F01FFE3FC0FFE9E0FFF1FE07FFFF8000FFFF8001FFFFFFFFF3F",
      INIT_61 => X"F0003FFF0001FFF0C07FF8300FFFFFC001FFFFC001FFFFFFFFF8FF03FFC007FF",
      INIT_62 => X"3FFFC01FFFE003FFFFFE003FFFFE003FFFFFFFFFC1807FFE00FFFFFFFFFFFFFF",
      INIT_63 => X"80FFFFFFF80FFFFFF807FFFFFFFFFF001FFFF01FFFFFFFFFFFFFFFC007FFFC00",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFC07FFFF83FFFFFFFFFFFFFFFF01FFFFF00FFFFC01FFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFF3",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[1]\(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized10\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized10\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFE3007FFFFFFFFC7FFF0203FFFF001E7E3FFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFF0807FFFFFFFF87FFF8307FFFF001C7C3FFFFFFFFFFFFFEFF",
      INITP_02 => X"FFFFFCC03FFFFFFFFC3FFFC103FFFF0038FC7FFFFFFFFFFFFFC0FFFFFFFFFFFF",
      INITP_03 => X"FFFFFFE1FFFE103FFFF8018F8FFFFFFFFFFFFFF80FFFB7FFFFFFFFFFFFFFFFFF",
      INITP_04 => X"E001FFFF801C60FFFFFFFFFFFFFF807FF83FFFFFFFFFFFFFFFFFFFFFFFC001FF",
      INITP_05 => X"E01FFFFFFFFFFFFFF801FF00FFFFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFE1FFF",
      INITP_06 => X"FFFFFF809FF807FFFFFFFFFFFFFFFFF01FFFF001FFFFFFFFF0FFFE083FFFF800",
      INITP_07 => X"007FFFFFFFFFFFFFFFF8007FFF000FFFF85FFE1FFFF001FFFF800E87FFFFFFFF",
      INITP_08 => X"FFFFFFFF8003FFFC01FFFC007FF0FFFF801FFFFC01FFFFFFFFFFC2FFFFF80DFF",
      INITP_09 => X"1FFFE00FFFC003FF8FFFFC01FFFF800FFFFFFFFFF007FFFFC0C7F023FC1FFFFB",
      INITP_0A => X"000FF87FFFC00FFFF800FFFFFFFFFE000FFFFC047F81BFC07FFF87F07FFFF0E0",
      INITP_0B => X"01FFFFC007FFFFFFFFE000FFFFC067F838F80FFFF01E07FFFF1F00FFFE007FFC",
      INITP_0C => X"FFFFFFFC0007FFFE073F81CFC07FFE08F81FFFE1F807FFF00FFF8000FFC3FFFE",
      INITP_0D => X"3FFFC039FC1C7C03FFE78F80FFFE3FE07FFF007FF80007F83FFFE00FFFFC00FF",
      INITP_0E => X"E3C07FFC7C3807FFF3FE01FFF003FF81001FC3FFFE00FFFFE00FFFFFFFFFC000",
      INITP_0F => X"E07FFF3FF01FFF807FF87C01FE3FFFF007FFFC007FFFFFFFFC1A01FFFE018FC0",
      INIT_00 => X"4C7FFFFFFFFFFFAC00CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E000000000000000000DEFFFFFF0D00",
      INIT_02 => X"002FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E000000003EFF6E00000000003EFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D0000",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFBA000069FF86000000000000000483FFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF0E61CD6FFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFF7E0000000000000000000EFFFF0F0000CEFFFFFFFFFF8E00009EFFFF",
      INIT_0B => X"FFFFFFFFFFEC0000006CEF2F00000000003DFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE0000008DFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"0600004ACB2400000000000000FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFF8F90000000101EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"00003DFFFF0E009CFFFFFFFFFF7F5000ACEFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"00000000004CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE00000000000000",
      INIT_15 => X"FFFFFFFFFFEF6C000020BFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F0C0000007ECF",
      INIT_16 => X"007CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6100101F51000000000000",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"00000000BDFFFFFFFFFFFFFFFFFFFFFFFFCE01213EDFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000",
      INIT_1C => X"6F9C001C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFF3F0000000000000000006CFFFF1E00ECFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFBD0000008CEF5C00000000005FFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0000002EFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFE3D8006C520000000000000000F2FFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFF7F10000000801FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0000000000000000EDFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"BF00000000000000000000AFFF3F0010DEFFCF2E40000CAEFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFBF5C0000005EEC00000000007EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0C00009CFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"00EC1C0000000000000085FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFAF3F5FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F70",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFF0F000000000000000000BEFFFFFFFFFFFFFFFFFF5E000000000020AE",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"FFFFDD0000200000004CDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"0000ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C000000000000000000CE",
      INIT_31 => X"FFFFFF1D000000DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E0000005C4D000000",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"00B00E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F240000000000000000003CE3",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FDD80000000",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"0D00408FFFFFFFFFFFFFFFFFFD00000000000010AEFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF00000000000010",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFCC0000000000000000000EFFFFFFBE0D2C009C0EBFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFDC0000004C0000000000BCFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFF5F6D50000040216EDFFFFFFFFFFFFFFFFFFFFFFFAE0000003DFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFF9600000000000000000000C6FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFF0E200000000000000000200EEFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"7E00000000003C0C201FFFFFFFFFFFFFFFCF7F7F7F5FAFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF8C0000000000001F1D004DFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAD70000030013EAFFFFFFFFFFFFFFF",
      INIT_42 => X"000000000000002DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"1F00000000000000000010DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D0000",
      INIT_44 => X"3EDFFFFFFFFFFFFFFFFFFFEF5C0000108FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"000000000000006DFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE100000000000000060",
      INIT_46 => X"FD000000000000000000000000DC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFD10000",
      INIT_47 => X"0FFFFFFFFFFFFFFFFF7F7FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFF8D0000000010ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE9DDD",
      INIT_49 => X"FFCD000000000000BD8F2C00CEFFFFFFFFFFFFFFFE00000000007FAE007CBFFF",
      INIT_4A => X"FFFFFF0F400000000000000020BDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E0000000000000000004CFFFFFFFF",
      INIT_4D => X"DD000000DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D0000000000000000002F",
      INIT_4E => X"FFFFFFFFFFFFFFFFFF2F1000000000000000000000A01FFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"0000805FFFFFFFFFFFFFFFFFFFFFFFFFFFF321000000000000000030DFFFFFFF",
      INIT_50 => X"5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F1000001C6DFDBD7C00000000",
      INIT_51 => X"EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF4D000000002D9FFFFFFFFF6F90000020",
      INIT_52 => X"7CCFFFFFFFFFFFFFCF0C00000000EEFFDD005DFFFFFFFFFFFF5D000000000000",
      INIT_53 => X"000050AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0000000000006CFF2E00",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F400000000000000000",
      INIT_55 => X"FFFFFFFFFFBE000000000000000000008FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFF9F2C00000000000000004EFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"00000000000000000000104EFFFFFFFFFFFFFFFF7F0000005CEFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFC38C0000000000000000BAFFFFFFFFFFFFFFFFFFFFFFFF2D0000",
      INIT_59 => X"FFFFFFFFFFFFFFCD00003C4FFFFFFFEF3E0C0000000000609FFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFDD0000000000009C7FFFFFFF7E00000000007DCFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"0000ADFFEFBC009EFFFFFFFFFF4E0000000000008DFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFF5C0000000000000FEFAC00DDFFFFFFFFFFFFFFDC0000",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFDD00000000000000000000000000BDEFFFFFFFFFFFFF",
      INIT_5E => X"00000000BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"000000000000006DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F000000000000",
      INIT_60 => X"BDFFFFFFFFFFFFFFFF1D0000009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD00",
      INIT_61 => X"0000000079FFFFFFFFFFFFFFFFFFFFFFDF200000000000000000000000000000",
      INIT_62 => X"FFFFFFFFFF8E000000000000ACCFFFFFFFFFFFFFFFFFFFFFFFFFFF1B08000000",
      INIT_63 => X"CFFFFFFF1D0000000000ECCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC00002EFF",
      INIT_64 => X"FF8F0000000000004CEFFFFFFFFFFFFFFFFFFFFFFFFF7F100000CC3E9D0C009C",
      INIT_65 => X"0000000000ADFF1F00105FFFFFFFFFFFFF0E000000007CFFFF5F1C408FFFFFFF",
      INIT_66 => X"000000000000000000000000004DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D00",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C00",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF5C000000000000000000EDFFFFFFFFFFFFFF",
      INIT_69 => X"00ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF6C00000000000000ACFFFFFFFF",
      INIT_6A => X"FFFFFFFF7F00000000000000000000000000000000CDFFFFFFFFFFFFFFAE0000",
      INIT_6B => X"006DFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000044EFFFFFFFFFFFFF",
      INIT_6C => X"BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC00004FFFFFFFFFFFFFFF9D0000000000",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFCD00002DEFFFFFFE2C007DFFFFFF9F4C0000000000EC",
      INIT_6E => X"FFFFFFFFFF8F00000000005FFFFF2E00FCFFFFFFFFFFEC000000000000EEFFFF",
      INIT_6F => X"00004DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE0000000000004CEFFF8D00FCFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000",
      INIT_71 => X"FFFF4D0000000000000000002DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFF7E0000000000000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"9EEC00000000000000006EFFFFFFFFFFFFEF5C0000004FFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFF020000000000000000FAFFFFFFFFFFFFFFFFFFFF7F000000001C4E6F",
      INIT_75 => X"FFFFFF6D00005FFFFFFFFFFFFFFFDF9C000000000000AEFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"005FFFFFFFFF3E0000DEFFFFFFCE000000000000CCDFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFEFDC004EFFFFFFFF3E0000000000009DFFFFFFFFFFFFFFFFFFFFFFFF6C00",
      INIT_78 => X"FFFFFFFFFFFFEF3C000000000000EEFFBF6C008EFFFFFFFFFFFFEC000000001E",
      INIT_79 => X"FFFFFFFFFFFF0000000000DD5FCE3D0000000000000000DDFFFFFFFFFFFFFFFF",
      INIT_7A => X"3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"00000000EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E000000000000000000",
      INIT_7C => X"FFFFFFFFFFFFDD0000009DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC000000",
      INIT_7D => X"00D1FFFFFFFFFFFFFFFFFFFFAF00000000DDFFFFFFFF7E2C000000000000103F",
      INIT_7E => X"FFFFFF1F00000000000050BFFFFFFFFFFFFFFFFFFFFFFFFF1B00000000000000",
      INIT_7F => X"FFFF9D0000000000006DFFFFFFFFFFFFFFFFFFFFFFFFFF7F9C002FFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[13]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[14]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(15),
      I2 => addra(14),
      I3 => ena,
      I4 => addra(12),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized11\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized11\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFF803FF83F00FE1FFFF00FFFFE007FFFFFFFFC3E007FFF038FC0F3E03FFC7E3",
      INITP_01 => X"80FF0FFFFC07FFFE003FFFFFFFFC3F807FFE01EFE0FBF03FFC7E1E01FFFFFF81",
      INITP_02 => X"7FFFF007FFFFFFFFE3FC07FFF00E7E078E03FFC7F3E01FFFFFF80FFFC03FFC3F",
      INITP_03 => X"FFFFFE1FE01FFF81E3E0FCF01FFC7F1F80FFFFFFC0FFF801FF83F807E0FFFFC0",
      INITP_04 => X"FFF00F9F07EF81FFC7F8F80FFFFFFC07FFC03FFC3FE07F07FFFC01FFFE007FFF",
      INITP_05 => X"301FFC3F8F803FFFFFE07FFE01FFC1FE03F8FFFFE01FFFF003FFFFF9FFE0FE01",
      INITP_06 => X"07FFFFFC03FFC01FFF0FE03F87FFFC01FFFF003FFFFFCFFF0FF00FFF80F9F07E",
      INITP_07 => X"FE00FFF0FF01FC7FFFE007FFF001FFFFF8FFF8FF81FFF8078F87E380FFC3FDFC",
      INITP_08 => X"0F83FFFE007FFF803FFFFFCFFF83FC0FFF807E783FBC07FE7F8FC03FFFFFE01F",
      INITP_09 => X"FFF001FFFFFCFFFE1F807FFC07E783F8C0FFC3F8FE03FFFFFF01FFF01FFF87F0",
      INITP_0A => X"E7FFE1FC07FFC03E3C1F8C07FE3FCFE01FFFFFE00FFE00FFFE1F81FC1FFFE007",
      INITP_0B => X"FE07FB81FE407FE3FCFF01FFFFFF00FFF007FFF88C0FC1FFFF001FFF801FFFFF",
      INITP_0C => X"03FF1F8FF00FFFFFF807FF007FFFD000FE1FFFE001FFF801FFFFFE7FFFC4407F",
      INITP_0D => X"FFFFFF007FF003FFFFFC07F1FFFE010FFFC00FFFFFF3FFFE8203FFC07F8C1FE6",
      INITP_0E => X"803FFFFFC0FF0FFFF030FFF801FFFFFF3FFFFFE07FFC03FC40FE003FF1F8FF80",
      INITP_0F => X"F07FFF0183FFC00FFFFFF9FFFFFF03FFE03FC40FF001FF1F8FFC07FFFFF803FF",
      INIT_00 => X"00000000006CFFFFFFFFFFFFFFFFFFFFFFDF00004CFFFFFFFFFFEFAC00BCFFFF",
      INIT_01 => X"00008DFFFFCE005CBFFFFFFFFFFF3E00000000FCFFFFFF3F0C308FFFFFFF9F0C",
      INIT_02 => X"FFFFFFFE5C00000000000000AEFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D00000000",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C0000003DFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFF3F000000000000000000006FFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000BDFFFFFFFFFFFFFF",
      INIT_06 => X"FF3C0000007EFFFFFFFFFF4F5C0000000000009CDFFFFFFFFFFF7F00000030BF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFF34800000000000000A8FFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFF7D000000000000BD",
      INIT_09 => X"FFFFFFFFFF7F00007CFFFFFFFFFFFFBE0000FEFFFFFFCF7C0000000000001EFF",
      INIT_0A => X"FFFF8F0000000010BFFFFFFFFD002DFFFFFFFF0D0000000000000FFFFFFFFFFF",
      INIT_0B => X"408FFFFFFFFFFFFFFFFFFFFFFFFFFFBE0000000000004CEFFFFF4D00BDFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFEC000000FDFFFFFFFFFF9F9C000000000000",
      INIT_0D => X"000000000000000000AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFF1D000000000000105FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C",
      INIT_0F => X"5F2C000000000000FDFFFFFFFFFFFF1D0000004EFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FF89000000000000000093FFFFFFFFFFFFFFFFFFFF4D0000001EFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFF8F1C0000000000206FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFAC006DFFFFFFFFFE000000000000103FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"EFBC007EFFFFFF7E000000000000BDFFFFFFFFFFFFFFFFFFFF1F00007CFFFFFF",
      INIT_14 => X"FFFFFFCF1C000000000000FEFFFFAF4C102FFFFFFFFFFFEC000000009EFFFFFF",
      INIT_15 => X"FFFFED0000006DFFFFFFFFFFFF9F8C0000000000005DFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"000DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D000000000000000000CDFFFF",
      INIT_18 => X"FFFFFFAE000000ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F000000000000",
      INIT_19 => X"FFFFFFFFFFFFFFFFFF9E000000DCFFFFFFFFFFFFFFDE000000000000207FFFFF",
      INIT_1A => X"FFAD000000000000ADFFFFFFFFFFFFFFFFFFFFFFFFC600000000000000007EFF",
      INIT_1B => X"7D000000000000BCEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"00006CFFFFFFFFFFFFFFFFFFFF7F000030FFFFFFFFFFFFFF3E0030DFFFFFFFFF",
      INIT_1D => X"FFFFFFAE00DCEFFFFFFFFF3E000000006DFFFFFFFF1F0C408FFFFFCF1C000000",
      INIT_1E => X"FFFF4F2C000000000000FEFFFFFFFFFFFFFFFFFFFFFFFFFF3D000000000000BD",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F0000004CEFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFF2E0000000000000000000DFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF8C000000000000008EFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"00003FFFFFFFFFFFFFFFAD0000000000007DFFFFFFFFFFEF5C000000FEFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFDF300000000000000075FFFFFFFFFFFFFFFFFFFFDF5C00",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F0C00000000001C33FFFF",
      INIT_25 => X"FF7F000000AFFFFFFFFFFFFFAF0C00FEFFFFFFFFAF4C000000000000C9FFFFFF",
      INIT_26 => X"000000004CEFFFFFFFFFCD002DFFFFFF5D0000000000000FFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFF8E0000000000007CFFFFFFFF4D003EFFFFFFFF8F",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFC0000008EFFFFFFFFFFFFFF4E000000000000FCFF",
      INIT_29 => X"00000000003CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEEF",
      INIT_2A => X"FFFF7D0000000000000050AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F00000000",
      INIT_2B => X"0000000000108FFFFFFFFFFFFD0000004DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"00000000000070FFFFFFFFFFFFFFFFFFFFFF6E000000FCFFFFFFFFFFFFFFCF6C",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFF2D000000000000A9FFFFFFFFFFFFFFFFFFFFFFFF5D00",
      INIT_2E => X"FFDC000EFFFFFFFFFF6E00000000000000FAFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"007EFFFFBE000000000000B9FFFFFFFFFFFFFFFFFFEF000000FEFFFFFFFFFFFF",
      INIT_30 => X"AF0C0000000000004FFFFFFFAF4C307FFFFFFFFFBC000000000FFFFFFFFFDF7C",
      INIT_31 => X"0000007CDFFFFFFFFFFFFFFFDC000000000000FEFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D00AEFFFFFFFFFFFFFFFFFFFFFF0F",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF1C0000000000000000006FFFFFFFFFFF",
      INIT_34 => X"8F0C0000108FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E00000000000000004D",
      INIT_35 => X"FFFFFFFFFFFFFF1D0000004EFFFFFFFFFFFFFF7E000000000000DDFFFFFFFFFF",
      INIT_36 => X"000000000024DBFFFFFFFFFFFFFFFFFFFFFFA600000000000000006FFFFFFFFF",
      INIT_37 => X"00000000002DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE00",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFAC00004EFFFFFFFFFFFFFFBD003DFFFFFFFFFFEFBC00",
      INIT_39 => X"FFAE00FCFFFFFFFFFD00000000DDFFFFFFFFFFFE00408FFFEF4C00000000004C",
      INIT_3A => X"2F0000000000003DFFFFFFFFFFFFFFFFFFFFFFFFFFEC0000000000001EFFFFFF",
      INIT_3B => X"FFFFFFFFFFCE00ECFFFFFFFFFFFFFFFFFFFFFFFFBD000000BDFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFC0000000000000000008EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFF3F000000000000000000AEFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"0FFFFFFFFFFFFFEF8C00000000004CEFFFFFFFFFFF2D000000EDFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFFFFCF200000000000000072FFFFFFFFFFFFFFFFFFFFFFAF9C000010",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF4C0000000000003AFFFFFFFFFF",
      INIT_41 => X"008DFFFFFFFFFFFFFF7E009CFFFFFFFFFFFFDE0000000000000053FFFFFFFFFF",
      INIT_42 => X"008CFFFFFFFFFFFF8D002DFFFFAD000000000000C6FFFFFFFFFFFFFFFFFF4D00",
      INIT_43 => X"FFFFFFFFFFFFFFFFFF0E000000000000FCFFFFFFFFFF4D004EFFFFFF3F000000",
      INIT_44 => X"FFFFFFFFFFFFFFFFEFEC0000007EFFFFFFFFFFFFFF3D0000000000108FFFFFFF",
      INIT_45 => X"0000BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C002FFFFFFF",
      INIT_46 => X"0000000000000000508FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD00000000000000",
      INIT_47 => X"000000EEFFFFFFFFFFDE0000005CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF1C",
      INIT_48 => X"0000006DFFFFFFFFFFFFFFFFFFFFFFFF9FBC0000300FFFFFFFFFFFFF5E000000",
      INIT_49 => X"FFFFFFFFFFFFFF8D00000000000078EBFFFFFFFFFFFFFFFFFFFFFF3900000000",
      INIT_4A => X"FFFFFFFFFFFFFFFC00000000000065FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FF1F00000000000045FFFFFFFFFFFFFFFFFF3E00005CFFFFFFFFFFFFFFFE0030",
      INIT_4C => X"0000000020DFFFFFFFFFAF4C205FFFFFFF6C000000006FFFFFFFFFFFBF6C005E",
      INIT_4D => X"00108EFFFFFFFFFFFFFE0000000000003EFFFFFFFFFFFFFFFFFFFFFFFF1F0000",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF7E005DFFFFFFFFFFFFFFFFFFFFFFFFCF1D00",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFDE000000000000000000ECFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"00009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC0000000000000000002DFFFF",
      INIT_51 => X"FFFFFFFFFFCF9D0000101EEFFFFFFFFFCF2C00000000007DFFFFFFFFFFFF8C00",
      INIT_52 => X"00000086FFFFFFFFFFFFFFFFFFFFFF7E000000000000001CCFFFFFFFFFFFFFFF",
      INIT_53 => X"00000C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE00000000",
      INIT_54 => X"FFFFFFFFFFFF5F0000000FFFFFFFFFFFFF1F0000FFFFFFFFFFFFFFFE00000000",
      INIT_55 => X"00ACCFFFFF9D000000002EFFFFFFFFFFFFBE00203FFF9C00000000000C9FFFFF",
      INIT_56 => X"00000000ECFFFFFFFFFFFFFFFFFFFFFFFFEF2C000000000000FEFFFFFFFFFFAE",
      INIT_57 => X"FFFFEF6C106FFFFFFFFFFFFFFFFFFFFFFFFFEF0E0C0000BDBFFFFFFFFFFF9C00",
      INIT_58 => X"BF00000000000000000030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFF7D00000000001C6C0000004EFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"AD5ECEFECF6D00000000005CFFFFFFFFFFFF2E000000DCFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFB70C000000000000003EFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F1D000070",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF1C000000000000B0FFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFF7F0000FFFFFFFFFFFFFFFFDC000000000000C9FFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFF4D008CCF1E000000000000B5FFFFFFFFFFFFFFFFFF7C0000EDFF",
      INIT_5F => X"FFFFFFFFFFFF1D000000000000FDFFFFFFFFFFFF5D006DFFFFCE00000000FCFF",
      INIT_60 => X"FFFFFFFFFFFFFFFF6F7D0C00408D3EAEFE9F0E000000000000BFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E007DFFFFFFFFFFFF",
      INIT_62 => X"00000E000000203FFFFFFFFFFFFFFFFFFFFFFFFFFFBC0000000000000000004F",
      INIT_63 => X"5FFFFFFFFFFFBF1C0000002FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E00000000",
      INIT_64 => X"5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F2E3D8C3C5CBCFEBE000000000000",
      INIT_65 => X"FFFFFFFF0D00000000000000C2FFFFFFFFFFFFFFFFFFFFFFFC00000000000000",
      INIT_66 => X"FFFFFFFF9E00000000000024BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"0000000000209FFFFFFFFFFFFFFFFFCD00008CFFFFFFFFFFFFFE0000FFFFFFFF",
      INIT_68 => X"000DFFFFFFFFFFFFBF7C002EFFCF0000000010BFFFFFFFFFFFFF9F3C005D8F00",
      INIT_69 => X"5D9C5C4CAC6E6F000000000000AAFFFFFFFFFFFFFFFFFFFFFFFF1E0000000000",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFDF5C107FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF6E",
      INIT_6B => X"FFFFFFFFFFFFFFFFFF9D0000000000000000008EFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE0000000000003EAD000000ACCFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFCF1C00000000006EFFFFFFFFFFFF9D0000008D",
      INIT_6E => X"CCFFFFFFFFFFFFFFFFFFFFFF2600000000000000002EFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E00000000000000",
      INIT_70 => X"FFFFFF5F0000003FFFFFFFFFFFBE001CFFFFFFFFFFFFFFFFDF4C000000000000",
      INIT_71 => X"6EFF3C00000000FEFFFFFFFFFFFFFF7E00001EBC0000000000009DFFFFFFFFFF",
      INIT_72 => X"00C1FFFFFFFFFFFFFFFFFFFFFFFFFE0000000000003CFFFFFFFFFFFFFF2F0C00",
      INIT_73 => X"7E007DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C00000000",
      INIT_74 => X"00000000000000ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFF2F0000000000006DDFAC0000007DFFFFFFFFFFFFFFFFFFFFFFFF9E0000",
      INIT_76 => X"FFFFDC0000000000ADFFFFFFFFFFFF3F00000020AFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"4F000000000000000040BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFF0F0000000000000000BEFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"FF2E008CFFFFFFFFFFFFFFFFFFBD00000000000040BFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFC000000000000000000104FFFFFFFFFFFFFFFFFDC0000EDFFFFFFFF",
      INIT_7B => X"FFFFCF000000000000006FFFFFFFFFFFFFFF6E0010210000000000FEFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D000000000054EFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8C105FFFFFFFFFFFFFFFFF",
      INIT_7E => X"3F0C0000007EFFFFFFFFFFFFFFFFFFFFFF8F000000000000000000CCFFFFFFFF",
      INIT_7F => X"FFFFFFFFFC0000001EFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F000000000000BCFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[13]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[14]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(15),
      I2 => addra(14),
      I3 => ena,
      I4 => addra(12),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized12\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized12\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FC00FFFFFF9FFFFFE01FFE01FF01FF801FF0FDFFC07FFFFF803FF803FFFFFE0F",
      INITP_01 => X"7FFFFF01FFF01FF03FF8067F879FFC03FFFFF801FFC01FFFFFC07F07FFF0183F",
      INITP_02 => X"03FFC3FFE027F8F9FFE03FFFFFC09FF801FFFFFC07F83FFF01C1FFE00FFFFFFC",
      INITP_03 => X"7FC79FFC00FFFFFC09FFC067FFFFE07F83FFF01E1FFC007FFFFFE7FFFFF01FFF",
      INITP_04 => X"FFFFC08FFC027FFFFE07FC3FFF01E07FE00FFFFFFF3FFFFF00FFE03FFFFFFF07",
      INITP_05 => X"27FFFFE07FE3FFF01F83FE007FFFFFF3FFFFF00FFE01FFFFFFF1F9FC73FFC00F",
      INITP_06 => X"1FFF01F83FF007FFFFFF1FFFFF033FF01FFFFFFFFFCFE13FFE00FFFFF80CFFE0",
      INITP_07 => X"007FFFFFFDFFFFF033FF01FFFFFFFFFC7F07FFE033FFFF80C3FC031FFFFE07FE",
      INITP_08 => X"FFFF03BFF01FFFFFFFFFE3F87FFE033FFFFC0E3FE079FFFFC07FF1FFF01FC1FE",
      INITP_09 => X"FFFFFFFFFF3F07FFC031FFFFC0F3FE038FFFFC0FFF07FE03FC1FE007FFFFFFC7",
      INITP_0A => X"703FFC07DFFFF81F9FE03EFFFFE07FF07FF01FF0FE007FFFFFFE7FFFE038FF01",
      INITP_0B => X"FF81F8FE03E7FFFC0FFF87FE03FF03E007FFFFFFE3FFFF078FF03FFFFFFFFFF8",
      INITP_0C => X"3FFFC1FFF83FE07FF81E007FFFFFFF9FFFE03C7E03FFFFFFFFFFC023FFC07EFF",
      INITP_0D => X"FC03FFC0F00FFFFFFFF8FFFC07E3F01FFFFFFFFFFF760FFC07E7FFF01FCFF03F",
      INITP_0E => X"7FFFFFFFC7FFC07F0C03FFFFFFFFFFFFF07FC0FF1FFF01FE7F03F8FFF81FFFE0",
      INITP_0F => X"F81FF0007FFFFFFFFFFFFF87F00FF87FC07FE1F07FC3FF01FFFE07007FFE0200",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD00000000001DFFFFFF",
      INIT_01 => X"CF0000000000001000B0FFFFFFFFFFFFFFFFFFFFFF700000000000002000EDFF",
      INIT_02 => X"FF0F00000000000000BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"008C0C0DFFFFFFFFFFFFFFFFAE00006CFFFFFFFFFF5D003DFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFCD00000000000000BFFFFFFFFFFFFFFFFF7F2C000000000000",
      INIT_05 => X"FFFFFF5E0000000000003EFFFFFFFFFFFFFFFFFFFFFFFFAC000000000000BEFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFBE003DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFF7C000000000000000020EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFF0000000000004CFFFF2E000000304FFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFF5E00000000008CFFFFFFFFFFFFFFBE0000006CEFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFF8D0000000000003C7C207FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C00000000003C38007AFF",
      INIT_0C => X"EF8C0000DEFFFFFFFF5C00FDFFFFFFFFFFFFFFFFFFEF3C000000000000106FFF",
      INIT_0D => X"00004DFFFFFFFFFFFFFFFFFFFF9E000000000000003DCD009EFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFF4D0000000000001EFFFFFFFFFFFFFFFFFF0E000000",
      INIT_0F => X"EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0000000000005CDF",
      INIT_10 => X"000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00",
      INIT_11 => X"00000000000000FFFFEFFC0000008CCFFFFFFFFFFFFFFFFFFFFF7D0000000000",
      INIT_12 => X"000000003CFFFFFFFFFFFFFFEF8C000000AEFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"000000000066003DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE00",
      INIT_14 => X"FFFFFFFFFFFFFFFFFF3D000000000000F10068D7FFFFFFFFFFFFFFFFFF9E0000",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFF3D000000000000001DFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFDD0000000000007ECF8C50AFFFFFFFFFFFFFFF7E00003DFFFFFF0F00001F",
      INIT_17 => X"0000000000008DFFFFFFFFFFFFFFFFFFFF0FDC0000EC9FFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFF8F00000000000000FDFFFFFFFFFFFFFFFFFFFFFFFD",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F0C9CEFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"0000004DFFFFFFFFFFFFFFFFFFFF7E0000000000000000006EFFFFFFFFFFFFFF",
      INIT_1B => X"FF4E000000ECFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFF8F3C",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F000000000000FFFFFFFFFFFFFF",
      INIT_1D => X"00000000934800F9FFFFFFFFFFFFFFFFFFAB000000000000002F1D00CEFFFFFF",
      INIT_1E => X"0000000000B400AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD0000",
      INIT_1F => X"0C3DFFFFFFFFFFFFFFEF8C00006FFFFF9D006CFFFFFFFFFFFFFFFFFFFFFF1E00",
      INIT_20 => X"FFFFFFFFFFFFFFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD00000000ECEFFF1F",
      INIT_21 => X"0000000000008C309FFFFFFFFFFFFFFFFFFFFF9E0000000000001DFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFBD002EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFF7F000000000000000000ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFF00000000000000FFFFFFFFAE000000000EFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFF7F000000000000FFFFFFFFFFFFFFFFDF4C0000002FFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFF9C000000000000BA7F1C6CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0000000000007F2E00248BFFFFFF",
      INIT_28 => X"005DFF9F2000FDFFFFFFFFFFFFFFFFFFFFFFBE0000000000004E3C6CBFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFF7E7C2CADCFFFFFFFFD002EFFFFFFFFFFFFFFAE00",
      INIT_2A => X"FFFFFFFFFFFFFFFE000000000000CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000006E006DFFFFFF",
      INIT_2C => X"CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF6C205FFF",
      INIT_2D => X"000000FFFFFFFFFF8D00000010DEFFFFFFFFFFFFFFFFFF7C0000000000000000",
      INIT_2E => X"00FFFFFFFFFFFFFFFFFFFD0000004DFFFFFFFFFFFFFFFFFFFFFFFFFF00000000",
      INIT_2F => X"0056FF2E007DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0000000000",
      INIT_30 => X"FFFFFFFFFF4E0000000000007FDF740055FFFFFFFFFFFFFFFFFF750000000000",
      INIT_31 => X"FFFFFFFFFFFF0F0000000000007E5E007DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFEF1D10BEFFFFFFFFFFFFFFCC0000FEBD003CAFFFFFFFFFFF",
      INIT_33 => X"00007CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFF0000000000007F1D00FEFFFFFFFFFFFFFFFFFF7F00000000",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE00DCEFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"00406FFFFFFFFFFFFFFFFF4D00000000000000006CFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"0000106FFFFFFFFFFFFFFFFFFFFFFF9F0000000000005CFFFFFFFFFFCFAC0000",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF3F00000000004CFFFFFFFFFFFFFFFFFFBF3C",
      INIT_39 => X"FFFF960000FAFFFFFFFFFFFFFFFF4A0000000000000EFFEFDC009EFFFFFFFFFF",
      INIT_3A => X"007EFF0D009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E000000000000",
      INIT_3B => X"EEFFFFFFFFFFFF2F0C00601000FDFFFFFFFFFFFFFFFFFFFFFFFF7F0000000000",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9C30",
      INIT_3D => X"00009F4F0C9CCFFFFFFFFFFFFFFFFF9F0000000000007CFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFF7D00FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF00000000",
      INIT_3F => X"000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFF1F000000000000DCFFFFFFFFFFFF4F2C0000009CCFFFFFFFFFFFFFFF1E",
      INIT_41 => X"FFFFCE0000000000ACFFFFFFFFFFFFFFFFFFFFFD0000004DFFFFFFFFFFFFFFFF",
      INIT_42 => X"FFFF13000000000000E9FFFF7F2C306FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFD00000000002CFFFFFFE80094E3FFFFFFFFFF",
      INIT_44 => X"9CDFFFFFFFFFFFFFFFFFFFFFFFFF2F0000000000007EFF8F4C305FFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F5C107EFFFFFFFFFFFF9D000000",
      INIT_46 => X"FFFFFFFF0000000000007CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F00000000000CFFFF9D00ADFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7C10EEFFFFFF",
      INIT_49 => X"FFFFFFFFFFFF7E000000001DEFFFFFFFFFFFFF8E000000000000000000FFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFBF3C000000EEFFFFFFFFFFFFFFFFFFFF3E000000000000ADFF",
      INIT_4B => X"FF9E009CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E00000000004DFFFFFF",
      INIT_4C => X"FFAD0000000000CCFFFFFF3B0C00E1FFFFFFFFFFFFFFAF00000000000012FFFF",
      INIT_4D => X"FFFFCE0000000000008EFFFFCE009CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFF5F8C003D6FFFFFFFFFDE0000000EFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFFBE0000000000ACFFFFAF3C00CEFFFFFFFFFFFFFFAF000000000000BCFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF2F0C606FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"BDFFFFFFFFFFFFFE000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"7CBFFFFFFFFFFFFFFFFFFF0D0000000000007EFFFFFFFFFFFFFFFF9D00000000",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFF0D00000000004EFFFFFFFFFFFFFFFFFFFFFF2E000000",
      INIT_55 => X"C100081FFFFFFFFFFFFFFF48000000000026FFFFFFFF9D000DEFFFFFFFFFFFFF",
      INIT_56 => X"FFDD000DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC0000000000BDFFFFFFFF",
      INIT_57 => X"F0CDCD110000000010CEFFFFFFFFFFFFFFFFFFFFFFFF1E0000000000000FFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FEC0000",
      INIT_59 => X"FF4E00305FFFFFFFFFFFFF4F0000000000000DFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFF3E009CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD00000000009DFFFF",
      INIT_5B => X"000000007CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"000000000000AFFFFFFFFFFFFFFFFFEFFC000000004EFFFFFFFFFFFE00000000",
      INIT_5D => X"0000000C8FFFFFFFFFFFFFFFFFFFFFFFDF8C0000001DEFFFFFFFFFFFFFFF6F10",
      INIT_5E => X"00000000003AFFFFFFFFEFEC004DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F1000",
      INIT_5F => X"FFFFFFFFFFFFFFFFBF2000000000000FFFFFFFFFD380008CC3FFFFFFFFFFFFE4",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFC000000000000AFFFFFFFEF2D004DEFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF2E3C00000000009C3D0000300FFF",
      INIT_62 => X"000000000000ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFEF5C0000000000FEFFFFFFEFCC008C9FFFFFFFFFFF7E",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D00ECCFFFFFFFFF",
      INIT_65 => X"FFFFFFFFAF8C00000010AEFFFFFFFFCE0000000000000000DCFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFEE000000004DEFFFFFFFFFFFFF2D0000000000000DFFFFFFFFFFFF",
      INIT_67 => X"9C002DCFFFFFFFFFFFFFFFFFFFFFFFFFFFBD00000000005DFFFFFFFFFFFFFFFF",
      INIT_68 => X"0000CCFFFFFFFFFFFF03000031FFFFFFFFFFFF61000000000072FFFFFFFFFFAF",
      INIT_69 => X"000000008CFFFFFFFFFFCFAC002DCFFFFFFFFFFFFFFFFFFFFFFFFFFF2E000000",
      INIT_6A => X"FFFFFFFFFFFFFFCF7E9D6DADCEEFEFCC000030EEFFFFFFFFFFFFFFFFFF6F0000",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"00000000BCFFFFFFFFFF1F0C009C6FFFFFFFFF1D0000000000008EFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFEFEC00CC9FFFFFFFFFFFFFFFFFFFFFFFFFFF7E00",
      INIT_6E => X"FFFFFFDD0000000000000000ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"7FFFFFFFEFBD00000000000000BEFFFFFFFFFFFFFFFFFFFFFF5F5C000000107E",
      INIT_70 => X"FFFFFFFF3F10000000001C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D00000000FC",
      INIT_71 => X"00E1FFFFFFFFFF710000000000D6FFFFFFFFFFFF8F5C00CC7FFFFFFFFFFFFFFF",
      INIT_72 => X"9C00BC7FFFFFFFFFFFFFFFFFFFFFFF2F200000000000DEFFFFFFFFFFFFFFD900",
      INIT_73 => X"FFFFFF7F5C0000104EFFFFFFFFFFFFFFFF3D000000000000CDFFFFFFFFFFFF9F",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"0000406EEFEF1E000000000000008FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFCFEC00802FFFFFFFFFFFFFFFFFFFFFFF9F500000000000DEFFFFFFFFFFFFCD",
      INIT_77 => X"BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"BCFFFFFFFFFFFFFFFFFFFFFFFFFF5F5C00000000FC5EED200000000000000000",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBC00000000204DFDCD9000000000000000",
      INIT_7A => X"007BFFFFFFFFFFFFFF5F7C00406EFFFFFFFFFFFFFFFFFF5F6000000000002EFF",
      INIT_7B => X"FFFFFE5000000000008DFFFFFFFFFFFFFFFFEBDC00004AFFFFFFFF1100000000",
      INIT_7C => X"FFFFFFFF7E000000000000004FFFFFFFFFFFFFFFCFEC00304EEFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5C0000002D8FFF",
      INIT_7E => X"001DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFBFEC00000000008DFFFFFFFFFFFFFFEFCC0000003040000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[13]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[14]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(15),
      I2 => addra(14),
      I3 => ena,
      I4 => addra(12),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized13\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized13\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFC1601FFE1FC07FF1E07FE0FC07FFFF0000FFFF0000FFFFFFFFE1F",
      INITP_01 => X"E0001FFF0000FFF840FFF8780FFFFF8001FFFF8000FFFFFFFFF87E01FF8003FF",
      INITP_02 => X"3FFFC00FFF8000FFFFFE003FFFFE001FFFFFFFFFC1C03FFC00FFFFFFFFFFFFFF",
      INITP_03 => X"007FFFFFE003FFFFE007FFFFFFFFFC000FFFE00FFFFFFFFFFFFFFF8003FFF000",
      INITP_04 => X"FFFFFFA3FFFFFFFFFFF003FFFF01FFFFFFFFFFFFFFFE00FFFFE003FFFF00FFFF",
      INITP_05 => X"FFFFFFFFD97FFFF87FFFFFFFFFFFFFFFF45FFFFF47FFFFF01FFFFA2FFFFFFF81",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFEC00100EDFFFFFFFFF",
      INIT_01 => X"FFFFFF5F5C00000000000000000000000000004CDFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFF9F6C0000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"0000C09EDFFFFFFFFFFF8E4000000000005DFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFA37C0000E9EFFFAF24000000006CFFFFFFFFFFFFFFFFFF9FBC",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFCF0D0000802E5FFFFFFFFF2F7D000000000000ECCFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF4F5C00000020ADFEBFAF4E100000000000007D",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFF7F5C0000000000000000000000CEFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFCF1D0000905EBFFFFFFFFFFFEE800000000000ECDF",
      INIT_0A => X"000000000000000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"00000000000000EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FBC000000000000",
      INIT_0C => X"000000007DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F9C000000000000",
      INIT_0D => X"A8FDD00000000000B5FFFFFFFFFFFFFFFFFFFFCF5D00000030119DDD61700000",
      INIT_0E => X"0000000050B0B04000000000000000EC9FFFFFFFFFFFFFFFFFFFFFFF63600000",
      INIT_0F => X"FFFF9FCC00000000000000000000000000009CAFFFFFFFFFFFFFFFFFFFFFEFAD",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"00000000000000004DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"EFCD00000020F08DED7190000000000000FCCFFFFFFFFFFFFFFFFFFFFF1F2C00",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFCF9D0000000000000000000000ECEFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFAF1D00000000000000000000005DFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFF8E3C00000000000000000000002C4EFFFFFFFFFFFFFFFF",
      INIT_17 => X"00009DDFFFFFFFFFFFFFFFFFFFFFFFFFFF5B8400000000000000001C6BFFFFFF",
      INIT_18 => X"00000000007C5FFFFFFFFFFFFFFFFFFFFFFFFFFFAE4C00000000000000000000",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFD1C000000000000",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"0000000CDDEFFFFFFFFFFFFFFFFFFFFFFFFF0F3C000000000000009CAFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C0000000000000000",
      INIT_1D => X"FFFFFFFEBC00000000000000008DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFF5E5C000000000000000C0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"4C000000000000001C8D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFB325000000000000007AFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFD",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFBFFD3C0000000000000000ECFEFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF6F8D1C000000000000001CADCFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFF6FBC00000000009C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFDF3E6C000000000000000C3D4FFFFFFFFFFFFFFFFF",
      INIT_26 => X"7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEBDDC7C9C2DFD",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF4EEC1C00005C9D",
      INIT_29 => X"00ACDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAEBDFC9CDC7D7EAFFFFFFF",
      INIT_2A => X"9EADEC7CBC1DFD2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EA80000",
      INIT_2B => X"FFFFFFCF7E9DFC8CBC7D4EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"6CBDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"FFEFEEDD0DACBC5D4E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF7EEC2C",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B0747FFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[13]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[14]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(15),
      I2 => addra(14),
      I3 => ena,
      I4 => addra(12),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized14\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized14\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[13]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[14]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(15),
      I2 => addra(14),
      I3 => ena,
      I4 => addra(12),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPADOP : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ram_ena : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized15\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized15\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => addra(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(13 downto 0) => B"00000000000000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 8),
      DOADO(7 downto 0) => DOADO(7 downto 0),
      DOBDO(15 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\(1),
      DOPADOP(0) => DOPADOP(0),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => ram_ena,
      ENBWREN => '0',
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  port (
    p_39_out : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized16\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized16\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim18.ram_0\ : STD_LOGIC;
  signal ena_array : STD_LOGIC_VECTOR ( 34 to 34 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim18.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => addra(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"00000000000000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 8) => p_39_out(16 downto 9),
      DOADO(7 downto 0) => p_39_out(7 downto 0),
      DOBDO(15 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1) => p_39_out(17),
      DOPADOP(0) => p_39_out(8),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => ena_array(34),
      ENBWREN => '0',
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addra(11),
      I1 => \^device_7series.no_bmm_info.sp.simple_prim18.ram_0\,
      I2 => addra(10),
      O => ena_array(34)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(14),
      I2 => addra(15),
      I3 => ena,
      I4 => addra(12),
      O => \^device_7series.no_bmm_info.sp.simple_prim18.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized17\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized17\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFE001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFF",
      INITP_0F => X"FFFFFFFFFFE000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFF",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99C05C240A38A245F7FFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFF650C00000000000000404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFF7E64040DEE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"000084CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A0000000000000000",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000007EF7FF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFC500000000568E0E00000000002E99FFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[22]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[23]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[12]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized18\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized18\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized18\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized18\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"1C07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
      INITP_02 => X"FFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E03FFFFFFF",
      INITP_03 => X"FFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F01FFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F80FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFF0F807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFF",
      INITP_06 => X"FFFFFFFFF0FC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFF",
      INITP_07 => X"E03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFC07FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F",
      INITP_09 => X"FFFFFFF000FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87E01FFFFFFFF",
      INITP_0A => X"F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F00FFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F00FFFFFFFFFFFFFFFC1FFFFFFFFC0007",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFE1F807FFFFFFFFFFFFFF007FFFFFFF80383F1FFFFFFFFF",
      INITP_0D => X"FFFFFFFF1F803FFFFFFFFFFFFFF003FFFFFFF00FE1F1FFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"03FFFFFFFF07FFFE001FFFFFFE01FF8E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"3FFFE000FFFFFFC03FF863FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FC",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFCE0000000000DEFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"00006EF7FFAF4E00000000001679FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBB00",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"9F060000000008B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"001075FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5020000BCFFFFFFD75000000000",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F0000000000CEFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFF6C000062FFFFFFFFB51C00000000001291FFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFF8E0000000036FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFF5700000000000030C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F000000BB",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"00000000D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB706",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"68F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3060000F2FFFFFFFFFFC6000000000000",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE00000000BFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFAC00002AEBFFFFFFFFDF30000000000000D2FFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFF5F00000000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFF51000000000000005DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9700000021FFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFF777DE6828000840AE37E7FFFFFFFFFFFFFFFFDF00000000",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF9A000030EBFFFFFFFFFF8400000000000022C9",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"00000000000020FEEFFFFFFFFFFFFFFF1600005EFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF1F30000000",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFA50000000FFFFFFFFFFFA100000000000000A2FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"FFFFFFFF100000DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF974800000000000000000000000000489FFFFF",
      INIT_59 => X"FFFFFFFFFF878E201050D6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"C40000000000000063FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA00001CD7FFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"57080000000000000EC6577F67DE1E0000186FFFFFFFFFDF0000009FFFFFFFFF",
      INIT_62 => X"DEF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE00000000000008",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFDD2C0000DAFFFFFFFFFFCD160000000000003CEBFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFDFC600001887FFFFFF47000076FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F08000000000000E6DFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFF3700000000000000000076D7FFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7BFE7FFFFFFFFFFFFFFFF",
      INIT_6E => X"000006A5FFFFFFFFFFF200000000000000F0FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"00006FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFC720000000000000E6FFFFFFFFFFFFFFFFFF1F000036DFFFFF9E",
      INIT_75 => X"000000000000000000006EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFFFFFFFFFFFF3F60000010BED7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF36",
      INIT_77 => X"00000000000AB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E000076FFFFFFFFFFDD1E00",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"0046EFFFFFFFFFFFFFFFFFFFFFCE0000C6FF9F00008EFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE0000000000",
      INIT_7F => X"0030AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7000000000000E696000000008E",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[22]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[23]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[12]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized19\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized19\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized19\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized19\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFC03FFC47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FE01FFFFFFFC0",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E01FFFFFFF801FFFE060FFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E00FFFFFFF800FFFE0707FFFFF807FFE0F",
      INITP_03 => X"FFFFFFFFFFFFFFFFFE3F00FFFFFFF0E0FFFE0707FFFFF807FFE0FFFFFFFFFFFF",
      INITP_04 => X"FFFFFFF1F007FFFFFF0F07FFE0783FFFFF807FFE1FFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"7FFFFFF1F87FFF0783FFFFF807FFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFF03C1FFFFF807FFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F80",
      INITP_07 => X"F007FF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87803FFFFFE1FC3",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C03FFFFFE1FC3FFF83C1FFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFE3C01FFFFFE1FE1FFF81C0FFFFF007FF11FFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFF1E01FFFFFE3FE1FFFC1E0FFFFF007FE31FFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFF0E01FFFFFF3FF0FFFC0E0FFFFF007FC71FFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFF0FFFE0E07FFFF003F8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FE0E07FFFF003F1F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E00F",
      INITP_0E => X"03E3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC700FFFFFFFFF8FF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3007FFFFFFFF87FFF0607FFFF0",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A60000000000",
      INIT_01 => X"FFFFFFFFFFFFFFFFD126000033FFFFFFFFFF0300000000000000B4FFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFEF3E0008BF6E0016BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFA700000000000000FEFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFF7F00000000006EFFFFA60000000057FFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFD6000000000000000030CFFFFFFFFFFFFFFFFF",
      INIT_0A => X"20C7FFFFFFFFDD1C00000000000000A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF570000",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFDE0000000000000087FFFFFFFFFFFFFFFFFFFFFFFF37000046000037FFFFFF",
      INIT_11 => X"DEFFFFD71E00000046EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"8F08000000260E0000000096FFFFFFFFFFFFFFFFFFFFFFFFFFFF9F0000000000",
      INIT_13 => X"00000098FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC00008AFDFFFFFFFFF400000000",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFEF26000000BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3600000000000000D7FFFF",
      INIT_1B => X"5FFFFFFFFFFFFFFFFFFFFFFFFFFFF70E0000000096FFFFFFFE0000000017FFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8600000027FFE7C600000000",
      INIT_1D => X"FFFFFFFFFFFFE540000025FFFFFFFFD7160000000000000093FFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"000076F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFAF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFCE",
      INIT_24 => X"FFFFFF960000000010E7FFFFD70E0000002EEFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFB70000009EFFFFFFFFC600000046F7FFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFE80000000000000090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D080010A9",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFC73000000FFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FF9E0000000037FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F000000",
      INIT_2E => X"FFFFFFFFE73E0000003FFFFFFFFFFFFFFFFFFFFFFFFFFF57000000000037FFFF",
      INIT_2F => X"009BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0000007F",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21000060F3FFFFFFC908000000000000",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFFAF4E00000096FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF370000000000000000FFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFF746000000006EFFFFFF4F0000000056FFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA600001EFFFFFFFFFFFF5700000046F7FF",
      INIT_39 => X"FFFFFFFFFDA60000DAFFFFFFFFB600000000000000AAFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFE0000000000000000D7FFFFFFFFFFFFFFFFFFFFAF30005E360056FF",
      INIT_40 => X"3F000000000097FFFFE70E0000000087FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFF56000086FFFFFFFFFFFFFF7E00000067FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"FF9D0000000000000004B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE54A000061FFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"009FFFFFFFFFFFFFFFFFFF8720002EC77E003EFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"000000C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000",
      INIT_4A => X"FFFF7F0000008EFFFFFFFFFFFFFFFFFFFFFFFFFFF74600000000BEFFFFFF8600",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF460000BEFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF9F120026CBFFFFFF7A00000000000000CCFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"002EAFFF7E0056FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFFC600000000000000005FFFFFFFFFFFFFFFFF6718",
      INIT_53 => X"FFFFFFFFFFFFFFFFFF570000000010CFFFFF0F0000000026EFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFB6000027FFFFFFFFFFFFFFFF66000000B7FFFFFFFF",
      INIT_55 => X"FFFFFF3D000076F5FFFF570000000000000010D5FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"BE00000000000000000FFFFFFFFFFFFFFF5708003EAFFFFF76007EFFFFFFFFFF",
      INIT_5C => X"000000F6FFFF8F000000000067FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"8E96E7FFFFFFFFFFFFFFFF5F000000E6FFFFFFFFFFFFFFFFFFFFFFFFFFFF7E00",
      INIT_5E => X"000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA0000DEFFFFF730",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"FFFFFFFF5708004ECFFFFFFF2600CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC60000000000000000A6FFFF",
      INIT_66 => X"3E000020EFFFFFFFFFFFFFFFFFFFFFFFFFFFA70600000020DFFFF70E00000000",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFF582000053FFFFF4000000000000003AF9FFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"000027FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFE000000000000000046FFFFFFFFFF7F08004ECFFFFFFFBF",
      INIT_6F => X"FFFFFFFFFFFFFFDE000000001FFFFF6E0000000036FFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0000003FFFFFFFFFFFFFFF",
      INIT_71 => X"FFDB46001EBDFFBD00000000000000005FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"000000000000DFFFFFFFBF20004ECFFFFFFFFF270000BFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"2EEFFFD60000000000A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000",
      INIT_79 => X"FFFFFFFFFFFFFFFFC706000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFDF2E000000",
      INIT_7A => X"0000000094FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9180064EDFF84000000",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[22]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[23]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[12]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  port (
    \douta[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized2\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC7FFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE807FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFF001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0BFFFFF",
      INIT_0F => X"FFFFFFFFFFC0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF85FFFFFFFFFFFFFFFF",
      INIT_10 => X"2E07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFF82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
      INIT_12 => X"FFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C01FFFFFFF",
      INIT_13 => X"FFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E80FFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F007FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFE0F80BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FFFFFF",
      INIT_16 => X"FFFFFFFFF9FC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFF",
      INIT_17 => X"C03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFF3A9FF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07",
      INIT_19 => X"FFFFFFF001FF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E01FFFFFFFF",
      INIT_1A => X"F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87E00FFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F007FFFFFFFFFFFFFFA1FFFFFFFFA000F",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFF3F80FFFFFFFFFFFFFFF81BFFFFFFF40967F1FFFFFFFFF",
      INIT_1D => X"FFFFFFFF0F803FFFFFFFFAFFFFE001FFFFFFF80FE2E1FFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"07FFFFFFFF0BFFFE002FFFFFFC01FF8F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"3FFFC001FFFFFFE03FFC67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FE",
      INIT_20 => X"FFF807FFEE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07C01FFFFFFF80",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83F00FFFFFFF801FFFE0E07FF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E01FFFFFFFC20FFFE0E87FFFFFC03FFC07",
      INIT_23 => X"FFFFFFFFFFFFFFFFFC1E007FFFFFF040FFFD0783FFFFF803FFE1FFFFFFFFFFFF",
      INIT_24 => X"FFFFFFF9F807FFFFFE1F03FFE0347FFFFF807FFF0FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"7FFFFFF1F47FFE03C1FFFFF807FFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFE07C1FFFFF007FFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07C0",
      INIT_27 => X"F803FF91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F807FFFFFE3F81",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3C01FFFFFE1FE1FFF81A0FFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFE3E03FFFFFE3FE3FFF03C0FFFFF807FE2BFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFF0C00FFFFFE1FE0FFF81E0FFFFF007FD79FFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFF9C01FFFFFF9FF0FFFE0E07FFFF807FAF3FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFE8FFFC0D0FFFFF003F5F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FF0F07FFFF803FBF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0601F",
      INIT_2E => X"03E7E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF00FFFFFFFFF8FF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3007FFFFFFFF07FFF8E03FFFF8",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFF1003FFFFFFFF83FFF0607FFFF003C7E3FFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFF0007FFFFFFFF83FFF8007FFFF80187C7FFFFFFFFFFFFFE1F",
      INIT_32 => X"FFFFF9C07FFFFFFFF83FFF8203FFFF0039FE3FFFFFFFFFFFFFA3FFFFFFFFFFFF",
      INIT_33 => X"FFFFFFE1FFFE083FFFF801CF5FFFFFFFFFFFFFFC0FFF8FFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"F103FFFF800DC0FFFFFFFFFFFFFF003FFC3FFFFFFFFFFFFFFFFFFFFFFFA403FF",
      INIT_35 => X"E03FFFFFFFFFFFFFF003FF80FFFFFFFFFFFFFFFFFFBFFFFF201FFFFFFFFC3FFF",
      INIT_36 => X"7FFFFF010FF817FFFFFFFFFFFFFFFFD05FFFE002FFFFCFFFF1FFFE101FFFF800",
      INIT_37 => X"827FBDFFFFFFFFFFFFF8003FFF800FFFF41FFE1FFFF803FFFF800F17FFFFFFFF",
      INIT_38 => X"7FFFFFFF8007FFFC00FFFD00FFE97FFF803FFFFC00FFFFFFFFFFA57FFFF80CFF",
      INIT_39 => X"1FFFC01FFFA003FF8FFFFC00FFFFC00FFFFFFFFFE005FFFF8087F827F82FFFFB",
      INIT_3A => X"002FF8BFFFC00FFFFC007FFFFFFFFE002FFFF804BF01BFC07FFE03E8FFFFE970",
      INIT_3B => X"00FFFFC00FFFFFFFFFE000BFFFE007FC15F807FFF03F05FFFE2E80FFFC00FFF8",
      INIT_3C => X"FFFFFFFE0001FFFC037F83E7803FFF19780FFFF1F803FFF00FFF8000FFC7FFFE",
      INIT_3D => X"0FFFC013F81CFC03FFC1CF80FFFE1FE03FFF003FF80003F83FFFE00FFFFE007F",
      INIT_3E => X"D3E07FFC7E7807FFE3FF01FFF007FF84801FA1FFFF00FFFFC007FFFFFFFFC000",
      INIT_3F => X"E03FFF9FF03FFF807FF07E03FE3FFFF807FFFE00FFFFFFFFFC1A01FFFD018FC1",
      INIT_40 => X"FFF803FFC7E81FE3FFFF80FFFFE003FFFFFFFFC3F807FFE019FE1F5E03FFC7C7",
      INIT_41 => X"80FF0FFFFC0FFFFF003FFFFFFFFC3FC03FFF00CFC1F9E01FFCFF3D03FFFBFF81",
      INIT_42 => X"3FFFF003FFFFFFFFC1FC07FFE81CBE0F5F03FFCFF1F03FFFFFF407FF803FF87F",
      INIT_43 => X"FFFFFC0FC03FFF81E5F07C681FFCFFBF817FFFFF807FF803FFC7FC07E0FFFFC0",
      INIT_44 => X"FFF01F3E03C780FFC3F1F007FFFFF80FFFE03FFE3FC07E8FFFFC01FFFE003FFF",
      INIT_45 => X"781FF87FCF807FFFFFC03FFE03FFC3FC05F87FFFE02FFFF007FFFFFEFFF0FE03",
      INIT_46 => X"03FFFFFE03FFC00FFF0FF03F0BFFFE00FFFF801FFFFFCFFE1FF81FFF0073F83F",
      INIT_47 => X"FC01FFE97E00F83FFFE007FFF801FFFFF8FFF8FF01FFF80F9F87F100FFC3FDFA",
      INIT_48 => X"0FC5FFFD00BFFF803FFFFFE7FF07FC17FF80FC783F1807FC3FDFE03FFFFFE03F",
      INIT_49 => X"FFF801FFFFFEFFFA5FC0FFFC07C781F9C07FE7FDFF01FFFFFE02FFF00FFFCBF8",
      INIT_4A => X"CBFFC1FE07FF807E1C1FCE07FE1FCFF01FFFFFF00FFF017FFA6F01FC3FFFE003",
      INIT_4B => X"FE07F983FC207FF1FCFF80FFFFFF81FFF00FFFE9501FC3FFFF041FFF803FFFFF",
      INIT_4C => X"03FE1FCFF80FFFFFF007FF80FFFF97C0FF0FFFE001FFFC00FFFFFF7FFF42C07F",
      INIT_4D => X"FFFFFF807FF003FFFFFA07F0FFFF0207FFC00FFFFFFFFFFCE003FFE03FC83FF4",
      INIT_4E => X"003FFFFFE07F07FFE010FFFC00FFFFFFBFFFFFE03FFE07F861FF303FF1FDFF80",
      INIT_4F => X"F8FFFE0387FF800FFFFFF3FFFFFE05FFC01FC81FF802FF8F8FFC07FFFFF007FF",
      INIT_50 => X"FE007FFFFFDFFFFFF03FFE03FE01FF800FF0FDFF807FFFFF017FFC01FFFFFE0F",
      INIT_51 => X"7FFFFE03FFE03FF01FFC04FF0FDFFA05FFFFFC1BFF80DFFFFFE07F83FFF0185F",
      INIT_52 => X"01FFA3FFE04BFCF1FFE03FFFFFC09FFC01FFFFFC0FF03FFF01A0FFE00FFFFFFE",
      INIT_53 => X"7F839FFE04FFFFF809FF8027FFFFC07F83FFF01D0FFE007FFFFFCBFFFFE01FFF",
      INIT_54 => X"FFFFC087FE077FFFFE07FC1FFF01E07FE007FFFFFF3FFFFF01FFF03FFE7FFF03",
      INIT_55 => X"67FFFFE07FE1FFF01F0FFF007FFFFFE3FFFFF007FF01FFFFFFFC79FC73FFE02F",
      INIT_56 => X"2FFF03F01FE007FFFFFF2FFFFF037FF03FFFFFFFFF7FE35FFC06FFFFF80EFFE0",
      INIT_57 => X"007FFFFFFDFFFFE025FF03FFFFFFFFFF7E17FFE067FFFFC0E7FC02BFFFFE07FF",
      INIT_58 => X"FFFF039FF03FFFFFFFFFDFF8FFFC067FFFFC0E5FE03AFFFFC07FF0FFF03F82FF",
      INIT_59 => X"FFFFFFFFFF2F87FFC032FFFF80F1FC07D7FFFC07FF87FF01FE17E007FFFFFFB7",
      INIT_5A => X"90BFFE03C7FFF81F1FE03E3FFFC07FF0FFE03FF0FF007FFFFFFC3FFFF034FE03",
      INIT_5B => X"FF80F87E07C1FFFE07FF85FD01FE83F00FFFFFFFF7FFFE079FE01FFFFFFFFFF8",
      INIT_5C => X"8FFFC1FFF80FC03FF05E00FFFFFFFF8FFFD0787F01FFFFFFFFFF9065FFE0383F",
      INIT_5D => X"F407FFE3F007FFFFFFF0FFFE0FE5F01FFFFFFFFFFEC02FF807C1FFF01F8FE07E",
      INIT_5E => X"FFFFFFFF83FFE0FE0201FFFFFFFFFFFFF97FC07FBFFE03FE3F07F4FFFC2FFFE1",
      INIT_5F => X"F80FE0807FFFFFFFFFFFFFC1F807F13FF03FD1F07FE3FF01FFFD0280FFFF0C00",
      INIT_60 => X"FFFFFFFFFFFA0C81FF81F403FE8407FF1FC07FFFF00007FFF8000FFFFFFFFE5F",
      INIT_61 => X"E0002FFC0E00FFF060FFE8F40BFFFFC000FFFFC000FFFFFFFFE9FE01FFC003FF",
      INIT_62 => X"3FFFC017FFA000FFFFFA003FFFFA000FFFFFFFFF02605FFC007FFFFFFFFFFFFF",
      INIT_63 => X"00BFFFFFF803FFFFF801FFFFFFFFFE000BFFD017FFFFFFFFFFFFFEC007FFF000",
      INIT_64 => X"7FFFFFBDFFFFFFFFFFF802FFFE83FFFFFFFFFFFFFFF9013FFFF007FFFE01FFFF",
      INIT_65 => X"FFFFFFFF933FFFF45FFFFFFFFFFFFFFFEECFFFFF9EFFFFF83FFFFBF7FFFFFF93",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[2]\(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized20\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized20\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized20\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized20\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFF1807FFFFFFFF87FFF8707FFFF803C7E3FFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFF9803FFFFFFFFC3FFF8303FFFF803CFE7FFFFFFFFFFFFFF3F",
      INITP_02 => X"FFFFF8803FFFFFFFFC3FFFC303FFFF801CFC7FFFFFFFFFFFFFC1FFFFFFFFFFFF",
      INITP_03 => X"FFFFFFC3FFFC103FFFF801CF8FFFFFFFFFFFFFF807FFCFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"E103FFFF801CF1FFFFFFFFFFFFFF803FF83FFFFFFFFFFFFFFFFFFFFFFFC403FF",
      INITP_05 => X"C03FFFFFFFFFFFFFF803FF81FFFFFFFFFFFFFFFFFFFFFFFE001FFFFFFFFE1FFF",
      INITP_06 => X"FFFFFF801FF00FFFFFFFFFFFFFFFFFE03FFFF001FFFFFFFFE1FFFF001FFFF801",
      INITP_07 => X"807FFFFFFFFFFFFFFFFC00FFFF801FFFF03FFF0FFFF001FFFF801F0FFFFFFFFF",
      INITP_08 => X"FFFFFFFF0003FFF800FFFE00FFF0FFFF801FFFF800FFFFFFFFFF81FFFFF808FF",
      INITP_09 => X"1FFFC00FFFC003FF07FFF801FFFFC00FFFFFFFFFF003FFFF804FF833F80FFFFC",
      INITP_0A => X"001FF87FFFC01FFFFC00FFFFFFFFFE001FFFFC067F831F80FFFF03F0FFFFF000",
      INITP_0B => X"00FFFFC00FFFFFFFFFC0007FFFC063F819FC07FFE01F03FFFE1F80FFFE00FFF8",
      INITP_0C => X"FFFFFFFC0003FFFC033FC1CFC07FFE10F01FFFE3FC07FFF007FF80007F87FFFC",
      INITP_0D => X"1FFFE031FC1E7C07FFC3C780FFFE3FC03FFF007FF80003FC3FFFE00FFFFC007F",
      INITP_0E => X"E7E03FFC7E7C07FFE3FE03FFF807FF83803FC3FFFF00FFFFC007FFFFFFFFC000",
      INITP_0F => X"C03FFF3FF01FFF803FF83E01FC1FFFF00FFFFE007FFFFFFFFC0C00FFFE039FC1",
      INIT_00 => X"26BFFFFFFFFFFF560066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF170000000000000000006FFFFFFF8600",
      INIT_02 => X"0097FFFFFFFFFFFFFFFFFFFFFFFFFFFF47000000001FFF3700000000001FFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF960000",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFF5D0000B4FF430000000000000002C1FFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF07B0E6B7FFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFF3F00000000000000000007FFFF87000067FFFFFFFFFF4700004FFFFF",
      INIT_0B => X"FFFFFFFFFF7600000036F79700000000009EFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67000000C6FFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"03000025E51200000000000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFC748000000080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"00009EFFFF07004EFFFFFFFFFFBF280056F7FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"000000000026FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7700000000000000",
      INIT_15 => X"FFFFFFFFFFF736000010DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7060000003FE7",
      INIT_16 => X"003EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB000088FA8000000000000",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"00000000DEFFFFFFFFFFFFFFFFFFFFFFFF6780901FEFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E0000",
      INIT_1C => X"B74E000E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFF9F00000000000000000036FFFF0F0076FFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDE00000046F72E0000000000AFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000017FF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFF16C003629000000000000000079FFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFBF08000000408FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC70000000000000000F6FFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"DF00000000000000000000D7FF9F00086FFFE71720000657FFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFDF2E0000002F7600000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFC70600004EFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"00760E00000000000000C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFD79FAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF38",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFF870000000000000000005FFFFFFFFFFFFFFFFFFF2F00000000001057",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"FFFFEE000010000000266FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"0000D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2600000000000000000067",
      INIT_31 => X"FFFFFF8E0000006FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF470000002EA6000000",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"005807CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97120000000000000000001EF1",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7EE40000000",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"860020C7FFFFFFFFFFFFFFFFFE0000000000000857FFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD700000000000008",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFF6600000000000000000007FFFFFF5F8616004E07DFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFF6E0000002600000000005EFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFAFB6280000209037EFFFFFFFFFFFFFFFFFFFFFFF570000009EFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFF4B0000000000000000000063FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFF071000000000000000001007F7FFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"3F00000000001E06108FFFFFFFFFFFFFFFE7BFBFBFAFD7FFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF460000000000008F8E00A6FFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD638000018801FD7FFFFFFFFFFFFFF",
      INIT_42 => X"0000000000000096FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"8F00000000000000000008EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE0000",
      INIT_44 => X"1FEFFFFFFFFFFFFFFFFFFFF72E000008C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"00000000000000B6FFFFFFFFFFFFFFFFFFFFFFFFFFFF57080000000000000030",
      INIT_46 => X"FE0000000000000000000000006ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE80000",
      INIT_47 => X"87FFFFFFFFFFFFFFFFBFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFC60000000008D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57CEEE",
      INIT_49 => X"FFE6000000000000DEC7160067FFFFFFFFFFFFFF7F0000000000BF57003EDFFF",
      INIT_4A => X"FFFFFF87200000000000000010DED7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F00000000000000000026FFFFFFFF",
      INIT_4D => X"EE000000EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE00000000000000000097",
      INIT_4E => X"FFFFFFFFFFFFFFFFFF970800000000000000000000508FFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"000040AFFFFFFFFFFFFFFFFFFFFFFFFFFFF990000000000000000018EFFFFFFF",
      INIT_50 => X"2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB70800000EB6FEDE3E00000000",
      INIT_51 => X"77FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A60000000096CFFFFFFFFFB748000010",
      INIT_52 => X"3EE7FFFFFFFFFFFFE7060000000077FFEE00AEFFFFFFFFFFFFAE000000000000",
      INIT_53 => X"00002857FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8700000000000036FF1700",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF200000000000000000",
      INIT_55 => X"FFFFFFFFFF5F00000000000000000000C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFCF16000000000000000027FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"000000000000000000000827FFFFFFFFFFFFFFFFBF0000002EF7FFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFE14600000000000000005DFFFFFFFFFFFFFFFFFFFFFFFF960000",
      INIT_59 => X"FFFFFFFFFFFFFFE600001EA7FFFFFFF71F06000000000030CFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFEE0000000000004EBFFFFFFF3F0000000000BEE7FFFFFFFFFFFFFFFFFF",
      INIT_5B => X"0000D6FFF75E004FFFFFFFFFFF27000000000000C6FFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFF2E00000000000087F75600EEFFFFFFFFFFFFFF6E0000",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFEE00000000000000000000000000DEF7FFFFFFFFFFFF",
      INIT_5E => X"000000005FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"00000000000000B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF000000000000",
      INIT_60 => X"DEFFFFFFFFFFFFFFFF8E0000004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00",
      INIT_61 => X"00000000BCFFFFFFFFFFFFFFFFFFFFFFEF100000000000000000000000000000",
      INIT_62 => X"FFFFFFFFFF4700000000000056E7FFFFFFFFFFFFFFFFFFFFFFFFFF8D04000000",
      INIT_63 => X"E7FFFFFF8E000000000076E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E000017FF",
      INIT_64 => X"FFC700000000000026F7FFFFFFFFFFFFFFFFFFFFFFFFBF080000661FCE06004E",
      INIT_65 => X"0000000000D6FF8F0008AFFFFFFFFFFFFF07000000003EFFFFAF0E20C7FFFFFF",
      INIT_66 => X"00000000000000000000000000A6F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC600",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E00",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF2E000000000000000000F6FFFFFFFFFFFFFF",
      INIT_69 => X"0076FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF360000000000000056FFFFFFFF",
      INIT_6A => X"FFFFFFFFBF00000000000000000000000000000000E6FFFFFFFFFFFFFF570000",
      INIT_6B => X"00B6FFFFFFFFFFFFFFFFFFFFFFFFFFFF700000000000000022F7FFFFFFFFFFFF",
      INIT_6C => X"DFFFFFFFFFFFFFFFFFFFFFFFFFFFFF560000A7FFFFFFFFFFFFFFCE0000000000",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFE6000096F7FFFF7F1600BEFFFFFFCF26000000000076",
      INIT_6E => X"FFFFFFFFFFC70000000000AFFFFF17007EFFFFFFFFFF7600000000000077FFFF",
      INIT_6F => X"0000A6F7FFFFFFFFFFFFFFFFFFFFFFFFFFFF7700000000000026F7FFC6007EFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000",
      INIT_71 => X"FFFFA600000000000000000096FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFF3F0000000000000000DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"4F76000000000000000037FFFFFFFFFFFFF72E000000A7FFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFF0100000000000000007DFFFFFFFFFFFFFFFFFFFFBF000000000E27B7",
      INIT_75 => X"FFFFFFB60000AFFFFFFFFFFFFFFFEF4E00000000000057FFFFFFFFFFFFFFFFFF",
      INIT_76 => X"00AFFFFFFFFF1F00006FFFFFFF6700000000000066EFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFF76E0027FFFFFFFF1F000000000000CEFFFFFFFFFFFFFFFFFFFFFFFF3600",
      INIT_78 => X"FFFFFFFFFFFFF71E00000000000077FFDF360047FFFFFFFFFFFF76000000000F",
      INIT_79 => X"FFFFFFFFFFFF0000000000EEAF679E0000000000000000EEFFFFFFFFFFFFFFFF",
      INIT_7A => X"1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"0000000077FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F000000000000000000",
      INIT_7C => X"FFFFFFFFFFFFEE000000CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E000000",
      INIT_7D => X"00E8FFFFFFFFFFFFFFFFFFFFD700000000EEFFFFFFFF3F16000000000000089F",
      INIT_7E => X"FFFFFF8F00000000000028DFFFFFFFFFFFFFFFFFFFFFFFFF8D00000000000000",
      INIT_7F => X"FFFFCE000000000000B6FFFFFFFFFFFFFFFFFFFFFFFFFFBF4E0097FFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[22]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[23]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[12]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized21\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized21\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized21\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized21\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFF803FF87F00FE1FFFF807FFFE007FFFFFFFFC1F00FFFE01CFE0F3E03FFC7E3",
      INITP_01 => X"807E1FFFF807FFFE007FFFFFFFFC1F807FFF01C7E0F1E03FFC7F3E03FFFFFF00",
      INITP_02 => X"3FFFE003FFFFFFFFC1FC03FFF01E7E0F9F01FFC7F1F01FFFFFF80FFF803FF87F",
      INITP_03 => X"FFFFFE1FE03FFF00F3F07CF01FFC7F9F00FFFFFF807FFC03FFC3FC07F0FFFFC0",
      INITP_04 => X"FFF80F3F07C701FFC7F9F807FFFFFC07FFC01FFC3FC03F0FFFFC03FFFF003FFF",
      INITP_05 => X"780FFC7F9FC07FFFFFC03FFC01FFE1FE03F07FFFC01FFFF003FFFFFFFFE1FF01",
      INITP_06 => X"03FFFFFE03FFE01FFE1FF01F87FFFE00FFFF003FFFFF9FFF0FF01FFF80F9F07E",
      INITP_07 => X"FE01FFF0FF01F83FFFE00FFFF003FFFFFCFFF07F80FFF80FCF03F380FFC7F8FC",
      INITP_08 => X"1FC3FFFE007FFF001FFFFFCFFF87F80FFFC07CF83F180FFC3FCFE03FFFFFE03F",
      INITP_09 => X"FFF801FFFFFE7FFC3FC0FFFC07E783F9C07FE3FCFE01FFFFFE01FFE00FFF87F8",
      INITP_0A => X"E7FFF0FC07FFC07F383FCC07FE3FCFF01FFFFFF01FFF00FFFC3F80FC3FFFE003",
      INITP_0B => X"FC03F1C1FC603FE1FCFF00FFFFFF00FFF00FFFF0780FE1FFFE003FFF801FFFFF",
      INITP_0C => X"03FE1FCFF80FFFFFF00FFF007FFFE0C0FE1FFFF021FFF801FFFFFF3FFF83E07F",
      INITP_0D => X"7FFFFF807FF807FFFFFC0FE0FFFF020FFF801FFFFFF3FFFF0607FFE03F9C1FE2",
      INITP_0E => X"803FFFFFC07F0FFFF0107FFC00FFFFFF9FFFFFE03FFE03FCC1FF201FF1FCFF80",
      INITP_0F => X"F0FFFF0187FFC00FFFFFF9FFFFFE03FFE03FE01FF001FF0FCFF807FFFFF807FF",
      INIT_00 => X"000000000036FFFFFFFFFFFFFFFFFFFFFFEF000026FFFFFFFFFFF756005EFFFF",
      INIT_01 => X"0000C6FFFF67002EDFFFFFFFFFFF1F000000007EFFFFFF9F0618C7FFFFFFCF06",
      INIT_02 => X"FFFFFF7F2E0000000000000057FFFFFFFFFFFFFFFFFFFFFFFFFFFFB600000000",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF260000009EFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFF9F00000000000000000000B7FFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F00000000000000DEFFFFFFFFFFFFFF",
      INIT_06 => X"FF1E0000003FFFFFFFFFFFA72E0000000000004EEFFFFFFFFFFFBF00000018DF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFF9240000000000000054FFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFBE000000000000DE",
      INIT_09 => X"FFFFFFFFFFBF00003EFFFFFFFFFFFF5F00007FFFFFFFE73E0000000000000FFF",
      INIT_0A => X"FFFFC70000000008DFFFFFFFFE0096FFFFFFFF8600000000000087FFFFFFFFFF",
      INIT_0B => X"20C7FFFFFFFFFFFFFFFFFFFFFFFFFF5F00000000000026F7FFFFA600DEFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF76000000FEFFFFFFFFFFCF4E000000000000",
      INIT_0D => X"00000000000000000057FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFF8E00000000000008AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E",
      INIT_0F => X"AF16000000000000FEFFFFFFFFFFFF8E00000027FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFC40000000000000000C9FFFFFFFFFFFFFFFFFFFFA60000000FFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFC70E000000000010B7FFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFF5600B6FFFFFFFF7F000000000000089FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"F75E003FFFFFFF3F000000000000DEFFFFFFFFFFFFFFFFFFFF8F00003EFFFFFF",
      INIT_14 => X"FFFFFFE70E0000000000007FFFFFD7260897FFFFFFFFFF76000000004FFFFFFF",
      INIT_15 => X"FFFFF6000000B6FFFFFFFFFFFFCF46000000000000AEFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"0086FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E000000000000000000E6FFFF",
      INIT_18 => X"FFFFFF5700000056FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F000000000000",
      INIT_19 => X"FFFFFFFFFFFFFFFFFF4F0000006EFFFFFFFFFFFFFF6F00000000000010BFFFFF",
      INIT_1A => X"FFD6000000000000D6FFFFFFFFFFFFFFFFFFFFFFFF6300000000000000003FFF",
      INIT_1B => X"BE0000000000005EF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"000036FFFFFFFFFFFFFFFFFFFFBF000018FFFFFFFFFFFFFF1F0018EFFFFFFFFF",
      INIT_1D => X"FFFFFF57006EF7FFFFFFFF1F00000000B6FFFFFFFF8F0620C7FFFFE70E000000",
      INIT_1E => X"FFFFA7160000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFF9E000000000000DE",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA700000026F7FFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFF1700000000000000000086FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF460000000000000047FFFFFFFFFFFFFFFFFF",
      INIT_22 => X"00009FFFFFFFFFFFFFFFD6000000000000BEFFFFFFFFFFF72E0000007FFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFEF1800000000000000BAFFFFFFFFFFFFFFFFFFFFEF2E00",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB70600000000000E99FFFF",
      INIT_25 => X"FFBF000000D7FFFFFFFFFFFFD706007FFFFFFFFFD726000000000000E4FFFFFF",
      INIT_26 => X"0000000026F7FFFFFFFFE60096FFFFFFAE00000000000087FFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFF470000000000003EFFFFFFFFA6001FFFFFFFFFC7",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFF7E00000047FFFFFFFFFFFFFF270000000000007EFF",
      INIT_29 => X"00000000001EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FF7",
      INIT_2A => X"FFFFBE0000000000000028D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F00000000",
      INIT_2B => X"000000000008C7FFFFFFFFFFFE000000A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"00000000000038FFFFFFFFFFFFFFFFFFFFFF370000007EFFFFFFFFFFFFFFE736",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFF96000000000000D4FFFFFFFFFFFFFFFFFFFFFFFFAE00",
      INIT_2E => X"FF6E0007FFFFFFFFFF37000000000000007DFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"003FFFFF5F000000000000DCFFFFFFFFFFFFFFFFFFF70000007FFFFFFFFFFFFF",
      INIT_30 => X"D706000000000000A7FFFFFFD72618BFFFFFFFFF5E0000000087FFFFFFFFEF3E",
      INIT_31 => X"0000003EEFFFFFFFFFFFFFFF6E0000000000007FFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E0057FFFFFFFFFFFFFFFFFFFFFF87",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF0E000000000000000000B7FFFFFFFFFF",
      INIT_34 => X"C706000008C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F0000000000000000A6",
      INIT_35 => X"FFFFFFFFFFFFFF8E00000027FFFFFFFFFFFFFF3F000000000000EEFFFFFFFFFF",
      INIT_36 => X"000000000012EDFFFFFFFFFFFFFFFFFFFFFF530000000000000000B7FFFFFFFF",
      INIT_37 => X"000000000096FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F00",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFF56000027FFFFFFFFFFFFFFDE009EFFFFFFFFFFF75E00",
      INIT_39 => X"FF57007EFFFFFFFFFE00000000EEFFFFFFFFFF7F0020C7FFF726000000000026",
      INIT_3A => X"970000000000009EFFFFFFFFFFFFFFFFFFFFFFFFFF760000000000000FFFFFFF",
      INIT_3B => X"FFFFFFFFFF670076FFFFFFFFFFFFFFFFFFFFFFFFDE000000DEFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFF7E00000000000000000047FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFF9F00000000000000000057FFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"87FFFFFFFFFFFFF746000000000026F7FFFFFFFFFF96000000F6FFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFFFFE7100000000000000039FFFFFFFFFFFFFFFFFFFFFFD74E000008",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF260000000000001DFFFFFFFFFF",
      INIT_41 => X"00C6FFFFFFFFFFFFFF3F004EFFFFFFFFFFFF6F00000000000000A9FFFFFFFFFF",
      INIT_42 => X"0046FFFFFFFFFFFFC60096FFFFD600000000000063FFFFFFFFFFFFFFFFFFA600",
      INIT_43 => X"FFFFFFFFFFFFFFFFFF070000000000007EFFFFFFFFFFA60027FFFFFF9F000000",
      INIT_44 => X"FFFFFFFFFFFFFFFFF7760000003FFFFFFFFFFFFFFF9E000000000008C7FFFFFF",
      INIT_45 => X"0000DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E0097FFFFFF",
      INIT_46 => X"000000000000000028C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFEE00000000000000",
      INIT_47 => X"00000077FFFFFFFFFF6F0000002EF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70E",
      INIT_48 => X"000000B6FFFFFFFFFFFFFFFFFFFFFFFFCF5E00001887FFFFFFFFFFFF2F000000",
      INIT_49 => X"FFFFFFFFFFFFFFC60000000000003CF5FFFFFFFFFFFFFFFFFFFFFF9C00000000",
      INIT_4A => X"FFFFFFFFFFFFFF7E000000000000B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FF8F000000000000A2FFFFFFFFFFFFFFFFFF1F00002EFFFFFFFFFFFFFF7F0018",
      INIT_4C => X"0000000010EFFFFFFFFFD72610AFFFFFFF3600000000B7FFFFFFFFFFDF36002F",
      INIT_4D => X"000847FFFFFFFFFFFF7F0000000000001FFFFFFFFFFFFFFFFFFFFFFFFF8F0000",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF3F00AEFFFFFFFFFFFFFFFFFFFFFFFFE78E00",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFF6F00000000000000000076FFFFFFFFFFFFFFFFFF",
      INIT_50 => X"00004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6600000000000000000096FFFF",
      INIT_51 => X"FFFFFFFFFFE7CE0000080FF7FFFFFFFFE7160000000000BEFFFFFFFFFFFF4600",
      INIT_52 => X"00000043FFFFFFFFFFFFFFFFFFFFFF3F000000000000000EE7FFFFFFFFFFFFFF",
      INIT_53 => X"000006CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F00000000",
      INIT_54 => X"FFFFFFFFFFFFAF00000087FFFFFFFFFFFF8F0000FFFFFFFFFFFFFF7F00000000",
      INIT_55 => X"0056E7FFFFCE0000000017FFFFFFFFFFFF5F00109FFF4E000000000006CFFFFF",
      INIT_56 => X"0000000076FFFFFFFFFFFFFFFFFFFFFFFFF7160000000000007FFFFFFFFFFF57",
      INIT_57 => X"FFFFF73608B7FFFFFFFFFFFFFFFFFFFFFFFFF707060000DEDFFFFFFFFFFF4E00",
      INIT_58 => X"DF00000000000000000018FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFBE00000000000E3600000027FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"D62F677FE7B600000000002EFFFFFFFFFFFF170000006EFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFDB06000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFF878E000038",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF0E00000000000058FFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFBF0000FFFFFFFFFFFFFFFF6E000000000000E4FFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFA60046E70F000000000000DAFFFFFFFFFFFFFFFFFF3E0000F6FF",
      INIT_5F => X"FFFFFFFFFFFF8E000000000000FEFFFFFFFFFFFFAE00B6FFFF67000000007EFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFB7BE060020C61F577FCF07000000000000DFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F00BEFFFFFFFFFFFF",
      INIT_62 => X"000007000000109FFFFFFFFFFFFFFFFFFFFFFFFFFF5E000000000000000000A7",
      INIT_63 => X"AFFFFFFFFFFFDF0E00000097FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1700000000",
      INIT_64 => X"2EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7179E461E2E5E7F5F000000000000",
      INIT_65 => X"FFFFFFFF860000000000000061FFFFFFFFFFFFFFFFFFFFFF7E00000000000000",
      INIT_66 => X"FFFFFFFF4F00000000000012DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"000000000010CFFFFFFFFFFFFFFFFFE6000046FFFFFFFFFFFF7F0000FFFFFFFF",
      INIT_68 => X"0086FFFFFFFFFFFFDF3E0017FFE70000000008DFFFFFFFFFFFFFCF1E00AEC700",
      INIT_69 => X"AE4E2E265637B700000000000055FFFFFFFFFFFFFFFFFFFFFFFF0F0000000000",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFEF2E08BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD737",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFCE00000000000000000047FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F0000000000001FD600000056E7FFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFE70E000000000037FFFFFFFFFFFFCE000000C6",
      INIT_6E => X"66FFFFFFFFFFFFFFFFFFFFFF13000000000000000017FFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F00000000000000",
      INIT_70 => X"FFFFFFAF0000009FFFFFFFFFFF5F000EFFFFFFFFFFFFFFFFEF26000000000000",
      INIT_71 => X"37FF1E000000007FFFFFFFFFFFFFFF3F00000F5E000000000000CEFFFFFFFFFF",
      INIT_72 => X"00E0FFFFFFFFFFFFFFFFFFFFFFFF7F0000000000001EFFFFFFFFFFFFFF970600",
      INIT_73 => X"3F00BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4600000000",
      INIT_74 => X"00000000000000D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFF97000000000000B6EF56000000BEFFFFFFFFFFFFFFFFFFFFFFFF4F0000",
      INIT_76 => X"FFFF6E0000000000D6FFFFFFFFFFFF9F00000010D7FFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"A7000000000000000020DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFF8700000000000000005FFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"FF170046FFFFFFFFFFFFFFFFFFDE00000000000020DFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFF7E00000000000000000008A7FFFFFFFFFFFFFFFF6E0000F6FFFFFFFF",
      INIT_7B => X"FFFFE700000000000000B7FFFFFFFFFFFFFF3700089000000000007FFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC600000000002AF7FFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74608AFFFFFFFFFFFFFFFFF",
      INIT_7E => X"9F060000003FFFFFFFFFFFFFFFFFFFFFFFC700000000000000000066FFFFFFFF",
      INIT_7F => X"FFFFFFFF7E0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC70000000000005EFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[22]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[23]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[12]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized22\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized22\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized22\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized22\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FC00FFFFFFCFFFFFF03FFE03FE01FF800FF8F8FFC03FFFFF803FF801FFFFFC07",
      INITP_01 => X"FFFFFF01FFE03FF81FFC00FF8F8FFC03FFFFF803FF801FFFFFE07F87FFF01C3F",
      INITP_02 => X"01FFC3FFC067FC79FFC01FFFFF801FFC04FFFFFE07F87FFF01C1FFC00FFFFFFC",
      INITP_03 => X"3FC71FFE01FFFFF808FFC04FFFFFE07FC3FFF01E0FFE00FFFFFFE7FFFFF00FFE",
      INITP_04 => X"FFFF80CFFC067FFFFE07FC3FFF01F0FFE007FFFFFE7FFFFF00FFF01FFFFFFE07",
      INITP_05 => X"73FFFFE07FC1FFF01F07FE007FFFFFF3FFFFF027FF01FFFFFFF8F3FE31FFE04F",
      INITP_06 => X"1FFF01F83FE007FFFFFF9FFFFF027FF01FFFFFFFFF9FE23FFE067FFFFC0C7FC0",
      INITP_07 => X"007FFFFFF8FFFFF033FF01FFFFFFFFFCFF03FFE067FFFFC0E7FE073FFFFE07FE",
      INITP_08 => X"FFFF031FF01FFFFFFFFFE7F07FFE073FFFF80E3FE039FFFFE07FE0FFF01FC1FF",
      INITP_09 => X"FFFFFFFFFF1F8FFFE079FFFF80F1FE07CFFFFE07FF0FFF01FE0FF007FFFFFFCF",
      INITP_0A => X"007FFE078FFFF80F1FE07C7FFFC0FFF87FE03FE07F007FFFFFFE7FFFF039FF01",
      INITP_0B => X"FF81F8FE07E3FFFC0FFF83FE03FF07F007FFFFFFF3FFFE03CFF01FFFFFFFFFF8",
      INITP_0C => X"1FFF80FFFC1FC03FF83F007FFFFFFF1FFFE07C7F01FFFFFFFFFFE003FFC07C7F",
      INITP_0D => X"F807FFC1E007FFFFFFF8FFFE07E3E03FFFFFFFFFFF8E1FFC07E3FFF81FC7E07F",
      INITP_0E => X"FFFFFFFFC7FFC0FE1E03FFFFFFFFFFFFF0FF807F1FFF03FC3E07F8FFF81FFFC0",
      INITP_0F => X"F80FF0003FFFFFFFFFFFFF83F80FF8FFE03FE3E07FC7FF03FFFE00007FFE0400",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE00000000008EFFFFFF",
      INIT_01 => X"E7000000000000080058FFFFFFFFFFFFFFFFFFFFFF380000000000001000F6FF",
      INIT_02 => X"FF8700000000000000DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"00460686FFFFFFFFFFFFFFFF57000036FFFFFFFFFFAE009EFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFE600000000000000DFFFFFFFFFFFFFFFFFBF16000000000000",
      INIT_05 => X"FFFFFF2F0000000000001FFFFFFFFFFFFFFFFFFFFFFFFF560000000000005FFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFF5F009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFF3E000000000000000010F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFF00000000000026FFFF1700000018A7FFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFF2F000000000046FFFFFFFFFFFFFF5F00000036F7FFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFC60000000000001E3E10BFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E00000000001E1C003DFF",
      INIT_0C => X"F74600006FFFFFFFFF2E00FEFFFFFFFFFFFFFFFFFFF71E00000000000008B7FF",
      INIT_0D => X"0000A6FFFFFFFFFFFFFFFFFFFF4F000000000000009EE6004FFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFA60000000000000FFFFFFFFFFFFFFFFFFF07000000",
      INIT_0F => X"77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF870000000000002EEF",
      INIT_10 => X"000000009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E00",
      INIT_11 => X"00000000000000FFFFF77E00000046E7FFFFFFFFFFFFFFFFFFFFBE0000000000",
      INIT_12 => X"000000001EFFFFFFFFFFFFFFF74600000057FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"000000000033009EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7700",
      INIT_14 => X"FFFFFFFFFFFFFFFFFF9E000000000000F80034EBFFFFFFFFFFFFFFFFFF4F0000",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFF9E000000000000008EFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFEE0000000000003FE74628D7FFFFFFFFFFFFFF3F00009EFFFFFF8700008F",
      INIT_17 => X"000000000000C6FFFFFFFFFFFFFFFFFFFF876E000076CFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFC700000000000000FEFFFFFFFFFFFFFFFFFFFFFFFE",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7064EF7FFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"000000A6FFFFFFFFFFFFFFFFFFFF3F00000000000000000037FFFFFFFFFFFFFF",
      INIT_1B => X"FF2700000076FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FFFFFFC71E",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7000000000000FFFFFFFFFFFFFF",
      INIT_1D => X"00000000C92400FCFFFFFFFFFFFFFFFFFFD500000000000000978E0067FFFFFF",
      INIT_1E => X"00000000005A0057FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD60000",
      INIT_1F => X"069EFFFFFFFFFFFFFFF7460000B7FFFFCE0036FFFFFFFFFFFFFFFFFFFFFF0F00",
      INIT_20 => X"FFFFFFFFFFFFFFD7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFDE0000000076F7FF8F",
      INIT_21 => X"0000000000004618CFFFFFFFFFFFFFFFFFFFFF4F0000000000008EFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFDE0017FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFBF000000000000000000D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFF00000000000000FFFFFFFF570000000007FFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFBF000000000000FFFFFFFFFFFFFFFFEF2600000097FFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFF4E0000000000005DBF0E36DFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000BF170012C5FFFFFF",
      INIT_28 => X"00AEFFCF1000FEFFFFFFFFFFFFFFFFFFFFFF5F000000000000271E36DFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFF3F3E16D6E7FFFFFFFE0017FFFFFFFFFFFFFF5700",
      INIT_2A => X"FFFFFFFFFFFFFF7F00000000000066FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000003700B6FFFFFF",
      INIT_2C => X"66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE73610AFFF",
      INIT_2D => X"000000FFFFFFFFFFC6000000086FFFFFFFFFFFFFFFFFFF3E0000000000000000",
      INIT_2E => X"00FFFFFFFFFFFFFFFFFFFE000000A6FFFFFFFFFFFFFFFFFFFFFFFFFF00000000",
      INIT_2F => X"002BFF1700BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF0000000000",
      INIT_30 => X"FFFFFFFFFF27000000000000BFEF3A00AAFFFFFFFFFFFFFFFFFFBA0000000000",
      INIT_31 => X"FFFFFFFFFFFF870000000000003F2F00BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFF78E085FFFFFFFFFFFFFFF6600007FDE001ED7FFFFFFFFFF",
      INIT_33 => X"00003EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFF000000000000BF8E007FFFFFFFFFFFFFFFFFFFBF00000000",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67006EF7FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"0020B7FFFFFFFFFFFFFFFFA6000000000000000036FFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"000008B7FFFFFFFFFFFFFFFFFFFFFFCF0000000000002EFFFFFFFFFFE7560000",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF9F000000000026FFFFFFFFFFFFFFFFFFDF1E",
      INIT_39 => X"FFFF4B00007DFFFFFFFFFFFFFFFF2500000000000007FFF76E004FFFFFFFFFFF",
      INIT_3A => X"003FFF86004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F000000000000",
      INIT_3B => X"77FFFFFFFFFFFF970600300800FEFFFFFFFFFFFFFFFFFFFFFFFFBF0000000000",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF4E18",
      INIT_3D => X"0000CFA7064EE7FFFFFFFFFFFFFFFFCF0000000000003EFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFBE00FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF700000000",
      INIT_3F => X"000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFF8F0000000000006EFFFFFFFFFFFFA7160000004EE7FFFFFFFFFFFFFF0F",
      INIT_41 => X"FFFF67000000000056FFFFFFFFFFFFFFFFFFFFFE000000A6FFFFFFFFFFFFFFFF",
      INIT_42 => X"FFFF89000000000000F4FFFFBF1618B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000016FFFFFF74004AF1FFFFFFFFFF",
      INIT_44 => X"4EEFFFFFFFFFFFFFFFFFFFFFFFFF970000000000003FFFC72618AFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC72E083FFFFFFFFFFFFFCE000000",
      INIT_46 => X"FFFFFFFF0000000000003EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF000000000006FFFFCE00D6FFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE73E0877FFFFFF",
      INIT_49 => X"FFFFFFFFFFFF3F000000008EF7FFFFFFFFFFFF47000000000000000000FFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFDF1E00000077FFFFFFFFFFFFFFFFFFFF1F000000000000D6FF",
      INIT_4B => X"FF4F004EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF070000000000A6FFFFFF",
      INIT_4C => X"FFD6000000000066FFFFFF9D0600F0FFFFFFFFFFFFFFD700000000000009FFFF",
      INIT_4D => X"FFFF6700000000000047FFFF67004EE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFAF46009EB7FFFFFFFF6F00000007FFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFF5F000000000056FFFFD71E0067FFFFFFFFFFFFFFD70000000000005EFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF970630B7FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"DEFFFFFFFFFFFF7F000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"3EDFFFFFFFFFFFFFFFFFFF860000000000003FFFFFFFFFFFFFFFFFCE00000000",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFF86000000000027FFFFFFFFFFFFFFFFFFFFFF17000000",
      INIT_55 => X"E000048FFFFFFFFFFFFFFF24000000000013FFFFFFFFCE0086F7FFFFFFFFFFFF",
      INIT_56 => X"FFEE0086F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF760000000000DEFFFFFFFF",
      INIT_57 => X"78E6E688000000000867FFFFFFFFFFFFFFFFFFFFFFFF0F00000000000087FFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF760000",
      INIT_59 => X"FF270018AFFFFFFFFFFFFFA700000000000086FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFF1F004EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD60000000000CEFFFF",
      INIT_5B => X"000000003EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"000000000000D7FFFFFFFFFFFFFFFFF77E0000000027FFFFFFFFFF7F00000000",
      INIT_5D => X"00000006C7FFFFFFFFFFFFFFFFFFFFFFEF460000008EF7FFFFFFFFFFFFFFB708",
      INIT_5E => X"00000000001DFFFFFFFFF77600A6F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFCF0800",
      INIT_5F => X"FFFFFFFFFFFFFFFFDF10000000000087FFFFFFFFE9400046E1FFFFFFFFFFFF72",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFF7E000000000000D7FFFFFFF79600A6F7FFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7171E00000000004E9E00001887FF",
      INIT_62 => X"000000000000D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFF72E00000000007FFFFFFFF7660046CFFFFFFFFFFF3F",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE0076E7FFFFFFFF",
      INIT_65 => X"FFFFFFFFD7460000000857FFFFFFFF6700000000000000006EFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFF7700000000A6F7FFFFFFFFFFFF9600000000000086FFFFFFFFFFFF",
      INIT_67 => X"4E0096E7FFFFFFFFFFFFFFFFFFFFFFFFFFDE0000000000AEFFFFFFFFFFFFFFFF",
      INIT_68 => X"000066FFFFFFFFFFFF81000098FFFFFFFFFFFFB0000000000039FFFFFFFFFFD7",
      INIT_69 => X"0000000046FFFFFFFFFFE7560096E7FFFFFFFFFFFFFFFFFFFFFFFFFF17000000",
      INIT_6A => X"FFFFFFFFFFFFFFE73FCEB6D667F7F76600001877FFFFFFFFFFFFFFFFFFB70000",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"000000005EFFFFFFFFFF8F06004EB7FFFFFFFF8E00000000000047FFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFF7760066CFFFFFFFFFFFFFFFFFFFFFFFFFFF3F00",
      INIT_6E => X"FFFFFFEE0000000000000000D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"BFFFFFFFF7DE000000000000005FFFFFFFFFFFFFFFFFFFFFFFAF2E000000083F",
      INIT_70 => X"FFFFFFFF9F08000000000EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFCE000000007E",
      INIT_71 => X"00F0FFFFFFFFFFB800000000006BFFFFFFFFFFFFC72E0066BFFFFFFFFFFFFFFF",
      INIT_72 => X"4E005EBFFFFFFFFFFFFFFFFFFFFFFF971000000000006FFFFFFFFFFFFFFFEC00",
      INIT_73 => X"FFFFFFBF2E00000827FFFFFFFFFFFFFFFF9E000000000000E6FFFFFFFFFFFFCF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"00002037F7F70F00000000000000C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFE776004097FFFFFFFFFFFFFFFFFFFFFFCF2800000000006FFFFFFFFFFFFFE6",
      INIT_77 => X"5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"5EFFFFFFFFFFFFFFFFFFFFFFFFFFAF2E000000007E2FF6100000000000000000",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFE75E0000000010A6FEE64800000000000000",
      INIT_7A => X"00BDFFFFFFFFFFFFFFAF3E002037FFFFFFFFFFFFFFFFFFAF30000000000017FF",
      INIT_7B => X"FFFF7F280000000000C6FFFFFFFFFFFFFFFFF56E000025FFFFFFFF8800000000",
      INIT_7C => X"FFFFFFFF3F00000000000000A7FFFFFFFFFFFFFFE776001827F7FFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF2E00000096C7FF",
      INIT_7E => X"008EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFDF760000000000C6FFFFFFFFFFFFFFF7660000001820000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[22]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[23]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[12]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized23\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized23\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized23\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized23\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFC0F00FFC3F807FF0E07FE1FE03FFFF0000FFFF0000FFFFFFFFE3F",
      INITP_01 => X"E0001FFE0000FFF8007FF00007FFFF8000FFFF8001FFFFFFFFF0FF01FF8007FF",
      INITP_02 => X"1FFFC00FFFC001FFFFFC001FFFFC001FFFFFFFFF80003FFC007FFFFFFFFFFFFF",
      INITP_03 => X"003FFFFFF007FFFFF003FFFFFFFFFE0007FFE00FFFFFFFFFFFFFFF0003FFF800",
      INITP_04 => X"FFFFFFC0FFFFFFFFFFF801FFFF01FFFFFFFFFFFFFFFC007FFFC007FFFE01FFFE",
      INITP_05 => X"FFFFFFFFE0FFFFFC3FFFFFFFFFFFFFFFF83FFFFF81FFFFF83FFFFC1FFFFFFFC0",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF76000807EFFFFFFFFF",
      INIT_01 => X"FFFFFFAF2E000000000000000000000000000026EFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFCF3600000000000000000000000000000087FFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"0000604FEFFFFFFFFFFF47200000000000AEFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFD13E0000F4F7FFD7120000000036FFFFFFFFFFFFFFFFFFCF5E",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFE78600004017AFFFFFFFFF97BE00000000000076E7FFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFA72E00000010D67FDFD72708000000000000BE",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFBF2E000000000000000000000067FFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFE78E0000482FDFFFFFFFFFFF7740000000000076EF",
      INIT_0A => X"0000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"00000000000000F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF5E000000000000",
      INIT_0C => X"00000000BEF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF4E000000000000",
      INIT_0D => X"54FE680000000000DAFFFFFFFFFFFFFFFFFFFFE7AE0000001888CEEEB0380000",
      INIT_0E => X"00000000285858200000000000000076CFFFFFFFFFFFFFFFFFFFFFFFB1300000",
      INIT_0F => X"FFFFCF6600000000000000000000000000004ED7FFFFFFFFFFFFFFFFFFFFF7D6",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"0000000000000000A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"F7E60000001078C6F6B8480000000000007EE7FFFFFFFFFFFFFFFFFFFF8F1600",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFE7CE000000000000000000000076F7FFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFD78E0000000000000000000000AEFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFF471E00000000000000000000001627FFFFFFFFFFFFFFFF",
      INIT_17 => X"0000CEEFFFFFFFFFFFFFFFFFFFFFFFFFFFAD4200000000000000000EB5FFFFFF",
      INIT_18 => X"00000000003EAFFFFFFFFFFFFFFFFFFFFFFFFFFF572600000000000000000000",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FE0E000000000000",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"00000006EEF7FFFFFFFFFFFFFFFFFFFFFFFF871E000000000000004ED7FFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F460000000000000000",
      INIT_1D => X"FFFFFF7F5E0000000000000000C6E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFF2F2E000000000000000607FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"26000000000000000EC6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFD992000000000000003DFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFE",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFDFFE1E0000000000000000767FFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFB7C60E000000000000000ED6E7FFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFB75E00000000004ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFEF1F3600000000000000069EA7FFFFFFFFFFFFFFFF",
      INIT_26 => X"BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77DE6E3E4E96FE",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF27760E00002ECE",
      INIT_29 => X"00566FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF57DE7E4E6EBE3FD7FFFFFF",
      INIT_2A => X"4FD6763E5E8EFE97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F540000",
      INIT_2B => X"FFFFFFE73FCE7E465EBE27D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"36DEE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"FFF777EE86565EAE27C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73F7616",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD83A3FFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[22]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[23]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[12]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized24\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized24\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized24\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized24\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[22]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[23]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[12]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized25\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_ena : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized25\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized25\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized25\ is
  signal \^ram_ena\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
  ram_ena <= \^ram_ena\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => addra(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(13 downto 0) => B"00000000000000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 8),
      DOADO(7 downto 0) => \douta[22]\(7 downto 0),
      DOBDO(15 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\(1),
      DOPADOP(0) => \douta[23]\(0),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => \^ram_ena\,
      ENBWREN => '0',
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => addra(12),
      I1 => ena,
      I2 => addra(15),
      I3 => addra(14),
      I4 => addra(13),
      I5 => addra(11),
      O => \^ram_ena\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  port (
    \douta[5]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized3\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized3\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 4,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 4
    )
        port map (
      ADDRARDADDR(13 downto 2) => addra(11 downto 0),
      ADDRARDADDR(1 downto 0) => B"00",
      ADDRBWRADDR(13 downto 0) => B"00000000000000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 4) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 4),
      DOADO(3 downto 0) => \douta[5]\(3 downto 0),
      DOBDO(15 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => \addra[12]\,
      ENBWREN => '0',
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  port (
    \douta[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized4\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized4\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4FFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BFFFFF",
      INIT_0F => X"FFFFFFFFFFC100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFF",
      INIT_10 => X"180FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
      INIT_12 => X"FFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F07FFFFFFF",
      INIT_13 => X"FFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F83FFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F817FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFE1F807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFF",
      INIT_16 => X"FFFFFFFFF07E07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFF",
      INIT_17 => X"E03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFE05FF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87",
      INIT_19 => X"FFFFFFD8017F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBE00FFFFFFFF",
      INIT_1A => X"F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83E00FFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F007FFFFFFFFFFFFFF8EFFFFFFFFC0007",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFE3F40BFFFFFFFFFFFFFF00FFFFFFFF80365F1FFFFFFFFF",
      INIT_1D => X"FFFFFFFE0FC07FFFFFFFFEFFFFF007FFFFFFE00FE2E3FFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"03FFFFFFFF1FFFFF000FFFFFFC01FF9F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"5FFFC020FFFFFFC01FF863FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FE",
      INIT_20 => X"FFF807FFA4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC03FFFFFFFC0",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F00FFFFFFFC02FFFE060FFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F01FFFFFFF001FFFE0F83FFFFFC03FFE0F",
      INIT_23 => X"FFFFFFFFFFFFFFFFFC1F80FFFFFFF040FFFE0F87FFFFFC07FFC1FFFFFFFFFFFF",
      INIT_24 => X"FFFFFFE2F00FFFFFFF1F07FFF0B81FFFFF007FFE3FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"7FFFFFE1F47FFF07C3FFFFF007FFD1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFF0383FFFFF807FF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F00",
      INIT_27 => X"F807FF5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC03FFFFFE3FC3",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83C03FFFFFF1FE1FFF8380FFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF1E01FFFFFE3FE1FFF83C0FFFFF807FE0BFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFF3E03FFFFFF1FE1FFFC2C07FFFF007FD1BFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFF1F00FFFFFF5FF0FFFE1C07FFFF803FCBBFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFF87FFC0E07FFFF003F871FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FF0E0FFFFF803F0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F01F",
      INIT_2E => X"03E1E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF00FFFFFFFFF0FF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD100FFFFFFFFF07FFF0303FFFF8",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFF3003FFFFFFFFC7FFF0707FFFF801C7F3FFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFF0407FFFFFFFF83FFFC707FFFF80187C3FFFFFFFFFFFFFEBF",
      INIT_32 => X"FFFFFC007FFFFFFFFE7FFF8203FFFF8038FCFFFFFFFFFFFFFF80FFFFFFFFFFFF",
      INIT_33 => X"FFFFFFE3FFFE101FFFF8039F8FFFFFFFFFFFFFFC0FFF9BFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"E083FFFF801C51FFFFFFFFFFFFFF007FF81FFFFFFFFFFFFFFFFFFFFFFFC803FF",
      INIT_35 => X"C41FFFFFFFFFFFFFF003FF03FFFFFFFFFFFFFFFFFFEFFFFD401FFFFFFFFC1FFF",
      INIT_36 => X"7FFFFF800FF80FFFFFFFFFFFFFFFFFE04FFFF803FFFFFFFFE0FFFE003FFFF800",
      INIT_37 => X"82BFBBFFFFFFFFFFFFFA017FFF000FFFE86FFF1FFFF003FFFF800F47FFFFFFFF",
      INIT_38 => X"7FEFFFFF8001FFF801FFFE01BFF07FFF000FFFF801FFFFFFFFFF65FFFFF800FF",
      INIT_39 => X"0FFFE017FFC005FF07FFFC01FFFF800FFFFFFFFFE00FFFFF80A7F837F81FFFFC",
      INIT_3A => X"000FF87FFFA00FFFFC007FFFFFFFFC001FFFF80EBF031F80FFFF05F17FFFF0F0",
      INIT_3B => X"01FFFFC00FFFFFFFFFC000FFFFC033F83CF807FFE01F05FFFE2F817FFC00FFFC",
      INIT_3C => X"FFFFFFFC0003FFFC061F8387807FFE10702FFFE3F80BFFE00FFF4000FF83FFFE",
      INIT_3D => X"1FFFE033F80EFE07FFC7EF01FFFF1FC07FFF807FF80003FC7FFFD01FFFFC00FF",
      INIT_3E => X"E3E03FFE3E3803FFF1FC03FFF007FF81403FC1FFFF00FFFFC00FFFFFFFFFC000",
      INIT_3F => X"C07FFF3FE01FFF003FF83F01FC1FFFF80FFFFE00FFFFFFFFFC0200FFFF03CFE0",
      INIT_40 => X"FFF807FFC7E007E3FFFF80FFFFE007FFFFFFFFC3F00FFFF018FE1F5C07FF87F7",
      INIT_41 => X"40FE0FFFF803FFFF007FFFFFFFFE3F003FFF01CFC0FBE01FFCFF3D01FFFBFF81",
      INIT_42 => X"3FFFF003FFFFFFFFE3F803FFE01E7F07DF03FF8FFBF01FFFFFF01FFF801FF83F",
      INIT_43 => X"FFFFFC1FD03FFF81F3F0F8603FFCFFAF81FFFFFFC0FFF803FF83F80FF1FFFFC0",
      INIT_44 => X"FFF01F3E07CF00FFC7F9F807FFFFFC07FFA03FF83FE07F0FFFFC01FFFF003FFF",
      INIT_45 => X"781FFC7F8FC07FFFFFE07FFC03FFE3FD01F87FFFE01FFFE007FFFFFFFFF0FE03",
      INIT_46 => X"07FFFFFE05FFE01FFE0FF01F03FFFC00FFFE003FFFFF9FFE17F01FFF807BF83D",
      INIT_47 => X"FD01FFF07F01FC7FFFE00FFFF801FFFFF9FFF8FF81FFFC07DF83F180FFE3FDFE",
      INIT_48 => X"1F83FFFE003FFF003FFFFFCFFFC7FC07FF80FC783F3C07FC3FCFC01FFFFFC03F",
      INIT_49 => X"FFF003FFFFFE7FF81FC0FFF80BEBC3FC807FE3FDFF03FFFFFE03FFF01FFF4BF0",
      INIT_4A => X"F7FFE1FC0FFFE07F583FDC03FC1F8FF00FFFFFF00FFF007FF81F41FC1FFFE007",
      INIT_4B => X"FC07F383FC007FF3FCFF00FFFFFE01FFF00FFFE1940FE1FFFF021FFF803FFFFF",
      INIT_4C => X"05FE1FCFF01FFFFFF007FF803FFFF5C07E1FFFF003FFFC00FFFFFF7FFFC3807F",
      INIT_4D => X"FFFFFF007FF807FFFFF80FE0FFFF0317FF800FFFFFE3FFFF0E07FFC03FD81FD0",
      INIT_4E => X"003FFFFFC0FF1FFFF028FFF801FFFFFFBFFFFFE03FFE07FCE1FF101FE1FCFF00",
      INIT_4F => X"F87FFE0387FF800FFFFFF8FFFFFE03FFC03FE41FF800FF1FCFFC07FFFFF007FF",
      INIT_50 => X"FE01FFFFFFDFFFFFE03FFF03FE01FFC00FF9F9FF807FFFFF007FFC0BFFFFFE07",
      INIT_51 => X"FFFFFE00FFE01FF01FF8047F879FFE03FFFFF81BFF80FFFFFFC07F8FFFF01C5F",
      INIT_52 => X"01FF85FFC047FCF0FFE01FFFFFC0AFF805FFFFFE0FF87FFF01E0FFE00FFFFFFE",
      INIT_53 => X"7FC73FFC05FFFFFC01FFC047FFFFC07F87FFF01D0FFE00FFFFFFC7FFFFE01FFF",
      INIT_54 => X"FFFFC0D7FC06FFFFFE07F83FFF01F07FE00FFFFFFF7FFFFF017FE01FFF7FFF0E",
      INIT_55 => X"37FFFFE07FE1FFF01F03FF007FFFFFEDFFFFF02FFF01FFFFFFFF7BFE2BFFE03F",
      INIT_56 => X"1FFE01F43FE00FFFFFFF1FFFFF027FF03FFFFFFFFF9FE37FFC04FFFFF80A7FE0",
      INIT_57 => X"007FFFFFFDFFFFF001FE03FFFFFFFFFDFF27FFE063FFFF80C7FC031FFFFE07FF",
      INIT_58 => X"FFFE033FF03FFFFFFFFFC7F03FFE065FFFFC1F3FC07FFFFFC0FFF0FFE01FA0FE",
      INIT_59 => X"FFFFFFFFFE3F07FFC030FFFFC0F3FE0387FFFC07FF8FFF03FE0FE007FFFFFFAF",
      INIT_5A => X"803FFC038FFFFC1F0FE07C7FFFC07FF8FFE03FE0FF007FFFFFFEFFFFF07CFF03",
      INIT_5B => X"FFC0F07F07F3FFF807FF03FE03FF83F00FFFFFFFF3FFFF0397E01FFFFFFFFFF4",
      INIT_5C => X"2FFFC0FFFC1FE03FF83E007FFFFFFFAFFFE07C3F03FFFFFFFFFFF025FFE07E7F",
      INIT_5D => X"FC07FF81E00FFFFFFFFC7FFE0FC3E01FFFFFFFFFFEB63FFC07D5FFF81F8FF07F",
      INIT_5E => X"FFFFFFFFA7FF807E1C01FFFFFFFFFFFFF07FC07E3FFF81FC7F03F0FFF81FFFC1",
      INIT_5F => X"FC0FF0803FFFFFFFFFFFFF05F807F57FE03FE1E07FA7FE83FFFD0A00FFFC0B00",
      INIT_60 => X"FFFFFFFFFFF83E01FF82FC0BFF9F0FFD07C03FFFE80007FFE00007FFFFFFFF0F",
      INIT_61 => X"C0001FFF06017FFCC0FFE08C0FFFFF8001FFFFC000FFFFFFFFE07F02FF8003FF",
      INIT_62 => X"0FFF800FFFA002FFFFFC001FFFF8003FFFFFFFFF86C05FFA007FFFFFFFFFFFFF",
      INIT_63 => X"003FFFFFE003FFFFF801FFFFFFFFFE0007FFD00FFFFFFFFFFFFFFF8005FFF800",
      INIT_64 => X"FFFFFFEBFFFFFFFFFFEC02FFFF80FFFFFFFFFFFFFFFC00BFFFF00FFFFF01FFFF",
      INIT_65 => X"FFFFFFFFE63FFFFFDFFFFFFFFFFFFFFFEADFFFFE7BFFFFF45FFFF73FFFFFFFA0",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[3]\(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  port (
    \douta[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized5\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized5\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF16FFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFF",
      INIT_0F => X"FFFFFFFFFFC0017FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFF",
      INIT_10 => X"3C07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
      INIT_12 => X"FFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C03FFFFFFF",
      INIT_13 => X"FFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F00FFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F017FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFE1F80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE07FFFFFF",
      INIT_16 => X"FFFFFFFFF9FA03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFF",
      INIT_17 => X"C01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFD8FFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F",
      INIT_19 => X"FFFFFFE803FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FE02FFFFFFFF",
      INIT_1A => X"F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F01FFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1F00FFFFFFFFFFFFFFF91FFFFFFFF80003",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFD1F00FFFFFFFFFFFFFFF807FFFFFFF00183E0FFFFFFFFF",
      INIT_1D => X"FFFFFFFE1FC07FFFFFFFFBFFFFF005FFFFFFF017C0E3FFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"03FFFFFFFF8BFFFF003FFFFFFD03FF163FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"7FFFE040FFFFFFE03FF843FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F8",
      INIT_20 => X"FFFC07FFE67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FC03FFFFFFFE0",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BC01FFFFFFF802FFFE0F07FF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F00FFFFFFF040FFFC0607FFFFF803FFE0F",
      INIT_23 => X"FFFFFFFFFFFFFFFFFE3E007FFFFFF0E07FFE0783FFFFFC03FFF1FFFFFFFFFFFF",
      INIT_24 => X"FFFFFFE1F807FFFFFF0F07FFE0707FFFFF807FFE3FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"3FFFFFE1FC7FFE0783FFFFF807FFD1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFF0781FFFFF807FFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F00",
      INIT_27 => X"F803FFC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C07FFFFFF1F83",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7803FFFFFE1FE3FFF81C0FFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFC5E01FFFFFE3FE1FFF83C0FFFFF803FEABFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFF3C00FFFFFF3FF1FFF80C1FFFFF003FE79FFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFF0F00FFFFFF3FE1FFFE1C0FFFFF803F8FBFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFF9FFFE1607FFFF007F079FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FE070FFFFF803F0F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8701F",
      INIT_2E => X"01F1F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87007FFFFFFFF0FF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7007FFFFFFFF0FFFE8E07FFFF8",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFE3003FFFFFFFF83FFF0303FFFF003CFE7FFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFF1807FFFFFFFFC3FFFC603FFFF8018FC3FFFFFFFFFFFFFCFF",
      INIT_32 => X"FFFFFC407FFFFFFFFE1FFFC307FFFF8018FE7FFFFFFFFFFFFF80FFFFFFFFFFFF",
      INIT_33 => X"FFFFFFE1FFFC183FFFF0039F87FFFFFFFFFFFFFC07FFC7FFFFFFFFFFFFFFFFFF",
      INIT_34 => X"D183FFFF0008E8FFFFFFFFFFFFFF007FF81FFFFFFFFFFFFFFFFFFFFFFFEC03FF",
      INIT_35 => X"E07FFFFFFFFFFFFFF001FF80FFFFFFFFFFFFFFFFFF97FFFD401FFFFFFFFC1FFF",
      INIT_36 => X"FFFFFF002FF807FFFFFFFFFFFFFFFFF00FFFE001FFFFFFFFE1FFFE181FFFFC01",
      INIT_37 => X"803FFDFFFFFFFFFFFFF8007FFF001FFFFCBFFE0FFFF881FFFFC00E03FFFFFFFF",
      INIT_38 => X"7FFFFFFF8005FFFC01FFFC017FF87FFF001FFFFC00FFFFFFFFFF207FFFF801FF",
      INIT_39 => X"1FFFC00FFF8001FF8FFFFC00FFFF801FFFFFFFFFE801FFFFC00FF825F80FFFF9",
      INIT_3A => X"001FF8FFFF801FFFF8007FFFFFFFFD002FFFF80CFF83BFC0FFFF81F0FFFFF0D0",
      INIT_3B => X"01FFFFC007FFFFFFFFE0007FFFE027FC18FC07FFF01F07FFFF1F017FFE007FF8",
      INIT_3C => X"FFFFFFFC0007FFFC023F83D780FFFE20F03FFFF1F807FFE00FFF80007F83FFFE",
      INIT_3D => X"3FFFE073F81CFE07FFE3CF417FFE3FC07FFF80FFF80007F87FFFF00FFFFE00FF",
      INIT_3E => X"F7C03FFE7C7C0FFFF3FE01FFF007FF83403FE3FFFF007FFFE007FFFFFFFFC000",
      INIT_3F => X"C07FFF1FE02FFF007FF07E00FE1FFFF00FFFFC007FFFFFFFFC1C01FFFE034FE0",
      INIT_40 => X"FFFC03FF87F80FE0FFFF807FFFC007FFFFFFFFE1F807FFF01D7C1E1C07FFCFE3",
      INIT_41 => X"80FE1FFFF807FFFE003FFFFFFFFE3F00BFFE03E7C079E01FFCFE3F01FFFFFF80",
      INIT_42 => X"3FFFE007FFFFFFFFE3F807FFF01D3F079F01FF8FF3F00FFFFFF00FFF801FFC3F",
      INIT_43 => X"FFFFFE3FE03FFF00E7E0F9703FFC7F1F80FFFFFF807FFC03FF87FC07E0FFFF80",
      INIT_44 => X"FFF01F9E0FE780FFC3F1F40FFFFFFC03FFC03FFE1FC07F8FFFFC01FFFE003FFF",
      INIT_45 => X"700FFC7FCFC07FFFFFC03FFE03FFE3FF01F8FFFFE02FFFE003FFFFFFFFF0FF03",
      INIT_46 => X"03FFFFFC03FFC01FFE1FF03F03FFFE01FFFF003FFFFF8FFE1FF81FFF00F5F03F",
      INIT_47 => X"FE01FFE07F03F87FFFC007FFF801FFFFFDFFF07F00FFFC079F87F5C1FFC7F8FC",
      INIT_48 => X"1FC7FFFE00BFFF801FFFFFC7FFC7F807FF80FEF03F180FFE3FCFE03FFFFFF01F",
      INIT_49 => X"FFF803FFFFFEFFFC1FC07FF807D7C3F580FFC7FCFF03FFFFFE03FFE01FFF03F8",
      INIT_4A => X"F7FFE07C0FFFC07E381F8403FE1F8FF00FFFFFE00FFF00FFFC1F81FC1FFFF003",
      INIT_4B => X"FC07FBC3FE403FF3FCFF81FFFFFF00FFE007FFE17C1FC3FFFF023FFF001FFFFF",
      INIT_4C => X"01FF1FCFF007FFFFF00FFF80FFFFC280FC0FFFE000FFF801FFFFFE7FFFC8803F",
      INIT_4D => X"FFFFFF00FFF003FFFFFC0FE0FFFE000FFF800FFFFFFBFFFDB603FFC03F4C0FC4",
      INIT_4E => X"805FFFFFE07E07FFE030FFF800FFFFFFBFFFFFE07FFE03F8C1FF001FF0F8FFC0",
      INIT_4F => X"F87FFE0107FF801FFFFFF9FFFFFE07FFE03FE01FF801FF9F8FF80BFFFFF003FF",
      INIT_50 => X"FE00FFFFFF8FFFFFF01FFE01FF00FF800FF1FCFF803FFFFF803FFC03FFFFFC07",
      INIT_51 => X"FFFFFE03FFF01FF03FF8027F8FDFFC03FFFFF803FF805FFFFFE07F0FFFF0383F",
      INIT_52 => X"01FFA5FFE06BFC70FFC01FFFFF80BFF804FFFFFE07F83FFF01E1FFE007FFFFFE",
      INIT_53 => X"3FC73FFC00FFFFF805FF800FFFFFE07FC7FFF01C1FFE00FFFFFFE7FFFFE01FFF",
      INIT_54 => X"FFFFC087FC02BFFFFE07FE1FFF01E07FE007FFFFFE3FFFFF007FE01FFE7FFE0E",
      INIT_55 => X"67FFFFE07FE3FFF01F07FF00FFFFFFFBFFFFF02FFF03FFFFFFFCF9FC63FFC057",
      INIT_56 => X"1FFE03F87FF00FFFFFFFBFFFFF027FF03FFFFFFFFF8FF21FFC06FFFFFC0EFFE0",
      INIT_57 => X"007FFFFFFDFFFFF013FE03FFFFFFFFF8FE27FFE063FFFFC0C7FE039FFFFC0FFC",
      INIT_58 => X"FFFF031FF03FFFFFFFFFD7F07FFC06BFFFFC0F3FC079FFFFE07FF1FFE03FC1FE",
      INIT_59 => X"FFFFFFFFFF1F87FFE039FFFF81E3FC038FFFFC0FFE0FFE01FE0FE007FFFFFFEF",
      INIT_5A => X"E07FFC03CFFFFC0F8FF03C7FFFC0FFF0BFE03FE07F007FFFFFFCFFFFE031FE01",
      INIT_5B => X"FF00F8FF03F7FFF807FF83FE01FF87F00FFFFFFFE1FFFE03CFF01FFFFFFFFFF4",
      INIT_5C => X"1FFF81FFFC3FC03FF01F00FFFFFFFFBFFFF07E3F01FFFFFFFFFFC001FFE03CFF",
      INIT_5D => X"F803FFE1F007FFFFFFFD7FFE07C3E01FFFFFFFFFFFAF1FFC07E3FFF03F87F07E",
      INIT_5E => X"7FFFFFFFE3FFA0FF3C01FFFFFFFFFFFFF8FF80FE1FFE03FE7F07F5FFF01FFFC1",
      INIT_5F => X"F40FF8403FFFFFFFFFFFFFC1F80FFCFFF03FF3E07FEFFF81FFFE07007FFF0E00",
      INIT_60 => X"FFFFFFFFFFFE0901FFC1F40FFE9C0FFC2FD07FFFE80007FFF8001FFFFFFFFD1F",
      INIT_61 => X"D0000FFE09017FFC607FF81C0FFFFF8001FFFF8000FFFFFFFFF0BF03FFC007FF",
      INIT_62 => X"1FFFC00FFF8001FFFFF8003FFFFC003FFFFFFFFFC2C07FF800FFFFFFFFFFFFFF",
      INIT_63 => X"803FFFFFF803FFFFF003FFFFFFFFFE000FFFC007FFFFFFFFFFFFFF8007FFF400",
      INIT_64 => X"FFFFFFD9FFFFFFFFFFF401FFFF00FFFFFFFFFFFFFFFC007FFFA00FFFFC01FFFD",
      INIT_65 => X"FFFFFFFFF1BFFFFEBFFFFFFFFFFFFFFFFA6FFFFF32FFFFF03FFFF977FFFFFF62",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFBFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[4]\(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  port (
    \douta[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized6\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized6\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF61FFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFE001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFE1007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFF",
      INIT_10 => X"3A07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC",
      INIT_12 => X"FFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F03FFFFFFF",
      INIT_13 => X"FFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E00FFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0F80FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFF1FC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFF",
      INIT_16 => X"FFFFFFFFF0FC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE07FFFFFFFFFFFFFFFFF",
      INIT_17 => X"E03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFF13FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07",
      INIT_19 => X"FFFFFFE001FF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87E01FFFFFFFF",
      INIT_1A => X"F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83E00FFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F80FFFFFFFFFFFFFFF86FFFFFFFFA000B",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFE3F807FFFFFFFFFFFFFF80FFFFFFFF807C3F0FFFFFFFFF",
      INIT_1D => X"FFFFFFFF0FC07FFFFFFFFDFFFFE007FFFFFFF01FF0F3FFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"01FFFFFFFE87FFFE003FFFFFFE03FF0E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"1FFFC040FFFFFFC07FFCC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FC",
      INIT_20 => X"FFF807FFC23FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87C01FFFFFFFC0",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E00FFFFFFFC01FFFE0E0FFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F00FFFFFFF000FFFC0F0FFFFFFC03FFC47",
      INIT_23 => X"FFFFFFFFFFFFFFFFFF1F007FFFFFF070FFFE0783FFFFF807FFE0FFFFFFFFFFFF",
      INIT_24 => X"FFFFFFE0F807FFFFFE0F8FFFE0783FFFFF007FFF3FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"3FFFFFE1F83FFF0381FFFFF807FFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFF87C3FFFFF007FFA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F80",
      INIT_27 => X"F807FF13FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F803FFFFFE1FC7",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7801FFFFFF1FE3FFF01C0FFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFC3E03FFFFFF1FE1FFFC1C1FFFFF803FE19FFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFE3E01FFFFFE1FF0FFFC1C0FFFFF807FE1BFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFF9E00FFFFFE3FF1FFFE1C0FFFFF003FC3BFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFF0FFFC0E0FFFFF803F9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FF0707FFFF807F3E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F00F",
      INIT_2E => X"03C7E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE200FFFFFFFFF07F",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7007FFFFFFFF8FFFF0703FFFF8",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFF1807FFFFFFFF83FFF8203FFFF003C3F7FFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFF0807FFFFFFFFC7FFFC203FFFF0018FE7FFFFFFFFFFFFFE5F",
      INIT_32 => X"FFFFF8003FFFFFFFFC3FFF8103FFFF8019F8FFFFFFFFFFFFFFE0FFFFFFFFFFFF",
      INIT_33 => X"FFFFFFE1FFFE301FFFF0019F47FFFFFFFFFFFFFC0FFFC7FFFFFFFFFFFFFFFFFF",
      INIT_34 => X"E081FFFF8018E1FFFFFFFFFFFFFF807FF05FFFFFFFFFFFFFFFFFFFFFFFE003FF",
      INIT_35 => X"E03FFFFFFFFFFFFFF003FF01FFFFFFFFFFFFFFFFFFCFFFFE403FFFFFFFFE3FFF",
      INIT_36 => X"FFFFFF801FF80FFFFFFFFFFFFFFFFFD85FFFE001FFFFFFFFE1FFFF003FFFF801",
      INIT_37 => X"003FC3FFFFFFFFFFFFF8007FFF801FFFE01FFF0FFFF803FFFFC00F17FFFFFFFF",
      INIT_38 => X"7F9FFFFF8007FFFC00FFFE007FF0FFFF001FFFF800FFFFFFFFFFC0FFFFFC00FF",
      INIT_39 => X"2FFFC00FFF8005FF8FFFF800FFFF800FFFFFFFFFE007FFFFC0CFF813FC1FFFFF",
      INIT_3A => X"000FF07FFFC00FFFFC00FFFFFFFFFE001FFFF8047F839F80FFFF03E87FFFE060",
      INIT_3B => X"00FFFF800FFFFFFFFFE000FFFFC037FC3DF80FFFF02E03FFFF0F00FFFF00FFF8",
      INIT_3C => X"FFFFFFFE0003FFFE061F818FC07FFC29F03FFFF1FC0FFFE007FF8000FF87FFFE",
      INIT_3D => X"1FFFE03BFC0CFE07FFE3C781FFFF1FE03FFF807FF00007FC7FFFE01FFFFC00FF",
      INIT_3E => X"F3C07FFC3C7C0FFFE1FF03FFF007FF00C01FC1FFFE00FFFFC007FFFFFFFFC000",
      INIT_3F => X"E03FFE9FE01FFF007FF87C00FE3FFFF80FFFFC007FFFFFFFFC1401FFFE039FE0",
      INIT_40 => X"FFF807FF83E01FC1FFFF80FFFFC003FFFFFFFFC1F00FFFE03CFC1E3E03FFC7F7",
      INIT_41 => X"00FE0FFFF803FFFE007FFFFFFFFE3FC07FFF01CFE0F9E01FF87F3E01FFFFFF01",
      INIT_42 => X"3FFFE007FFFFFFFFE1FE03FFF01E3F0FCE03FF87F9F00FFFFFF807FFC03FF83F",
      INIT_43 => X"FFFFFC1FC03FFF01F7E078F01FF87F1F01FFFFFFC0FFFC01FFC7FC03F1FFFF80",
      INIT_44 => X"FFF80F1F07E700FF87F9F80FFFFFF803FFC01FFC1FE03F0FFFFE03FFFE003FFF",
      INIT_45 => X"381FFC7FCF807FFFFFC07FFC01FFC3FE03F87FFFC01FFFE003FFFFFFFFF1FE03",
      INIT_46 => X"03FFFFFE03FFE00FFE0FE03F87FFFC00FFFF001FFFFF9FFE0FF81FFF8078F83E",
      INIT_47 => X"FE00FFF87F81F87FFFC00FFFF803FFFFFDFFF8FF00FFFC07DF87F380FFE3FCFE",
      INIT_48 => X"1FC3FFFE007FFF803FFFFFE7FFC3F80FFF80FC707F9C0FFC7F9FE01FFFFFE01F",
      INIT_49 => X"FFF803FFFFFC7FFC3FC07FF807E381F8807FC3FCFF01FFFFFF01FFE00FFFC3F0",
      INIT_4A => X"E3FFE1FE0FFFC07F7C1FC607FC1F8FF01FFFFFF01FFE00FFFE1F80FE3FFFF003",
      INIT_4B => X"FC07F1C3FCC07FE3F8FF81FFFFFF01FFF007FFE0B80FC3FFFE001FFF801FFFFF",
      INIT_4C => X"03FF3FCFF80FFFFFF00FFF807FFF89C07E0FFFE000FFFC00FFFFFE3FFF05C07F",
      INIT_4D => X"FFFFFF00FFF003FFFFFC07F1FFFF011FFFC01FFFFFF1FFFE4807FFC03F8C1FE2",
      INIT_4E => X"003FFFFFE0FE0FFFE0187FFC01FFFFFF1FFFFFF07FFE03F841FE103FE0FCFF80",
      INIT_4F => X"F87FFF0303FFC01FFFFFFCFFFFFF03FFE01FC01FF800FF9F9FFC07FFFFF007FF",
      INIT_50 => X"FC00FFFFFFCFFFFFE01FFF03FF01FF004FF8F8FF807FFFFF807FF803FFFFFE07",
      INIT_51 => X"FFFFFE01FFE01FF01FFC02FFCF9FFC01FFFFFC01FFC00FFFFFC0FF87FFF0181F",
      INIT_52 => X"03FFA7FFE037F870FFC01FFFFF809FFC00FFFFFE07FC7FFF01E3FFC007FFFFFE",
      INIT_53 => X"3FE39FFC05FFFFFC09FFC00FFFFFC07F87FFF01E0FFC007FFFFFCFFFFFF01FFF",
      INIT_54 => X"FFFFC00FFE047FFFFC07FC1FFF01F07FC00FFFFFFF3FFFFF02FFF01FFFFFFF0E",
      INIT_55 => X"23FFFFC07FE1FFF01F87FE00FFFFFFF1FFFFF007FF03FFFFFFF1F9FE33FFE00F",
      INIT_56 => X"0FFF01FC1FE007FFFFFFBFFFFF007FE01FFFFFFFFF9FF33FFC007FFFF8047FC0",
      INIT_57 => X"007FFFFFF9FFFFF027FF01FFFFFFFFFEFE07FFC027FFFF80E7FC03BFFFFC07FE",
      INIT_58 => X"FFFE03BFF01FFFFFFFFFE3F8FFFC031FFFFC0F7FC070FFFFE0FFF0FFE03F83FE",
      INIT_59 => X"FFFFFFFFFE8F87FFE07BFFFFC1E3FE03DFFFFC07FF0FFE03FC0FF007FFFFFFCF",
      INIT_5A => X"E07FFC03CFFFFC1F8FE03E7FFFC07FF07FE01FF0FF007FFFFFFC3FFFF079FF03",
      INIT_5B => X"FF80FDFF03F3FFFC0FFFC3FC03FF83F007FFFFFFE7FFFF0787E01FFFFFFFFFFC",
      INIT_5C => X"9FFFC0FFFC1FC03FFC3F00FFFFFFFF3FFFE07EFE03FFFFFFFFFFC041FFE07C7F",
      INIT_5D => X"7C07FF80F00FFFFFFFFDFFFC0FC5E03FFFFFFFFFFF5F1FF80FF3FFF03F87E03F",
      INIT_5E => X"FFFFFFFFEBFFC0FF0C03FFFFFFFFFFFFE07F80FFAFFE03FE7E07F97FF00FFFE1",
      INIT_5F => X"FC1FF8003FFFFFFFFFFFFF03F007FC7FE07FF1E03F83FE01FFFF0380FFFC0A00",
      INIT_60 => X"FFFFFFFFFFF81E00FFC4F00FFF1E07FF3FE03FFFF00007FFE0000FFFFFFFFF1F",
      INIT_61 => X"F0003FFF0601FFF0E0FFF03007FFFF4001FFFF4000FFFFFFFFF17F83FF0007FF",
      INIT_62 => X"3FFFA007FFC000FFFFFC001FFFFE003FFFFFFFFFC3A07FF8007FFFFFFFFFFFFF",
      INIT_63 => X"005FFFFFE003FFFFF807FFFFFFFFFF000FFFC01FFFFFFFFFFFFFFF8001FFF800",
      INIT_64 => X"7FFFFFF57FFFFFFFFFF000FFFE83FFFFFFFFFFFFFFFA00FFFFE00FFFFE00FFFF",
      INIT_65 => X"FFFFFFFFF67FFFFA7FFFFFFFFFFFFFFFF79FFFFFEAFFFFFC7FFFFFCFFFFFFFA1",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFF7FFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[5]\(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ena,
      I1 => addra(15),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized7\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized7\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2FFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFF",
      INITP_0F => X"FFFFFFFFFFE080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFF",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3381B8481470458AEFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFCA1800000000000000809EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFEFCD8080BDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"00000997FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF740000000000000000",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD00000000FCEFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFF8B00000000AC1D1C00000000005C33FFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[13]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[14]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => addra(13),
      I1 => addra(15),
      I2 => addra(14),
      I3 => ena,
      I4 => addra(12),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized8\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized8\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"1C03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
      INITP_02 => X"FFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E01FFFFFFF",
      INITP_03 => X"FFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F01FFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFF1FC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFF",
      INITP_06 => X"FFFFFFFFF8FC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFF",
      INITP_07 => X"C01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFA0BFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87",
      INITP_09 => X"FFFFFFE001FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7F01FFFFFFFF",
      INITP_0A => X"F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F01FFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F807FFFFFFFFFFFFFFE3FFFFFFFFC0007",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFE3F807FFFFFFFFFFFFFF80FFFFFFFF00441F1FFFFFFFFF",
      INITP_0D => X"FFFFFFFE1FC07FFFFFFFFFFFFFE003FFFFFFE01FF1E1FFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"03FFFFFFFE0FFFFE001FFFFFFE03FF0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"3FFFE061FFFFFFE03FFCE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFF9D0000000000BDFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"0000DCEFFF5F9C00000000002CF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7700",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"3F0C00000000106FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"0020EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEB04000079FFFFFFAFA000000000",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E00000000009DFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFD80000C4FFFFFFFF6B3800000000002423FFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFF1D000000006CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFAE000000000000608BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E00000077",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"00000000AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F0C",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"D0E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF870C0000E5FFFFFFFFFF8D000000000000",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D000000007FFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFF59000054D7FFFFFFFFBF60000000000000A5FFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFFBE000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFA200000000000000BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F00000042FFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFEFEEBDD0500010805D6ECFFFFFFFFFFFFFFFFFBF00000000",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF35000060D7FFFFFFFFFF090000000000004493",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"00000000000040FDDFFFFFFFFFFFFFFF2C0000BCFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF3E60000000",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FF4B0000001EFFFFFFFFFF430000000000000045FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"FFFFFFFF200000BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF2F9000000000000000000000000000903FFFFF",
      INIT_59 => X"FFFFFFFFFF0F1D4020A0AD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"8900000000000000C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95000038AFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"AE100000000000001C8DAEFECEBD3C000030DEFFFFFFFFBF0000003FFFFFFFFF",
      INIT_62 => X"BDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD00000000000010",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFBB580000B5FFFFFFFFFF9B2C00000000000078D7FFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFBF8D0000300FFFFFFF8E0000ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE10000000000000CDBFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFF6E000000000000000000ECAFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF7FCFFFFFFFFFFFFFFFFF",
      INIT_6E => X"00000C4BFFFFFFFFFFE500000000000000E1FFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"0000DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFF8F40000000000000CDFFFFFFFFFFFFFFFFFF3E00006CBFFFFF3D",
      INIT_75 => X"00000000000000000000DCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFFFFFFFFFFFF7EC00000207DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C",
      INIT_77 => X"00000000001473FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D0000ECFFFFFFFFFFBB3C00",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"008CDFFFFFFFFFFFFFFFFFFFFF9D00008DFF3F00001DFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D0000000000",
      INIT_7F => X"00605FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F000000000000CD2D000000001D",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[13]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[14]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => addra(13),
      I1 => addra(15),
      I2 => addra(14),
      I3 => ena,
      I4 => addra(12),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized9\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized9\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFC07FFC47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87C03FFFFFFFE0",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87E01FFFFFFFC01FFFC0707FF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F01FFFFFFF801FFFE0F07FFFFFC07FFC07",
      INITP_03 => X"FFFFFFFFFFFFFFFFFE1F00FFFFFFF8707FFE0F83FFFFF807FFE1FFFFFFFFFFFF",
      INITP_04 => X"FFFFFFF1F80FFFFFFF1F87FFF0783FFFFF807FFF1FFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"7FFFFFE0F83FFE03C1FFFFF007FFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFF0381FFFFF007FFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F80",
      INITP_07 => X"F807FF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC07FFFFFF1F83",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C03FFFFFE3FC1FFF03C1FFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFE3C03FFFFFE3FC3FFF83E1FFFFF807FF11FFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFE1C01FFFFFF1FE1FFF81C0FFFFF803FC31FFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFF9E00FFFFFFFFE1FFFC1E07FFFF803F871FFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFF0FFFE0E0FFFFF807F0F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FF0607FFFF803E1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC700F",
      INITP_0E => X"03E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7007FFFFFFFF07F",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE380FFFFFFFFF87FFF0707FFFF8",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF4D0000000000",
      INIT_01 => X"FFFFFFFFFFFFFFFFA34C000066FFFFFFFFFF060000000000000069FFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFDF7C00107FDC002C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF4F00000000000000FDFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFE0000000000DCFFFF4D00000000AEFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFAD0000000000000000609FFFFFFFFFFFFFFFFF",
      INIT_0A => X"408FFFFFFFFFBB380000000000000043FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE0000",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFBD000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF6E00008C00006EFFFFFF",
      INIT_11 => X"BDFFFFAF3C0000008CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"1F100000004C1C000000002DFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F0000000000",
      INIT_13 => X"00000031FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF79000015FBFFFFFFFFE900000000",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFDF4C0000007DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C00000000000000AFFFFF",
      INIT_1B => X"BEFFFFFFFFFFFFFFFFFFFFFFFFFFEF1C000000002DFFFFFFFD000000002EFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D0000004EFFCF8D00000000",
      INIT_1D => X"FFFFFFFFFFFFCB8000004AFFFFFFFFAF2C0000000000000027FFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"0000ECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFF5F0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D",
      INIT_24 => X"FFFFFF2D0000000020CFFFFFAF1C0000005CDFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFF6F0000003DFFFFFFFF8D0000008CEFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFD10000000000000021FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B10002053",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"0000000000FFFFFFFFFFFFFFFFFFFFFFFFFF8F6000001EFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FF3D000000006EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE000000",
      INIT_2E => X"FFFFFFFFCF7C0000007EFFFFFFFFFFFFFFFFFFFFFFFFFFAE00000000006EFFFF",
      INIT_2F => X"0037FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E000000FE",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF420000C0E7FFFFFF9310000000000000",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFF5F9C0000002DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E0000000000000000FFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFEF8C00000000DCFFFFFF9E00000000ACFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D00003CFFFFFFFFFFFFAE0000008CEFFF",
      INIT_39 => X"FFFFFFFFFB4D0000B5FFFFFFFF6D0000000000000055FFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFD0000000000000000AFFFFFFFFFFFFFFFFFFFFF5F6000BC6C00ACFF",
      INIT_40 => X"7E00000000002FFFFFCF1C000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFAC00000DFFFFFFFFFFFFFFFC000000CEFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"FF3B00000000000000086BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB940000C2FFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"003FFFFFFFFFFFFFFFFFFF0F40005C8FFC007CFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"0000008DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD00000000000000",
      INIT_4A => X"FFFFFE0000001DFFFFFFFFFFFFFFFFFFFFFFFFFFEF8C000000007DFFFFFF0D00",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C00007DFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFF3F24004C97FFFFFFF40000000000000099FF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"005C5FFFFC00ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFF8D0000000000000000BEFFFFFFFFFFFFFFFFCE30",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFAE00000000209FFFFF1E000000004CDFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFF6D00004EFFFFFFFFFFFFFFFFCC0000006FFFFFFFFF",
      INIT_55 => X"FFFFFF7A0000ECEBFFFFAE0000000000000020ABFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"7D00000000000000001EFFFFFFFFFFFFFFAE10007C5FFFFFEC00FCFFFFFFFFFF",
      INIT_5C => X"000000EDFFFF1F0000000000CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"1D2DCFFFFFFFFFFFFFFFFFBE000000CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00",
      INIT_5E => X"000000000000001EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF950000BDFFFFEF60",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"FFFFFFFFAE10009C9FFFFFFF4C009DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D00000000000000004DFFFF",
      INIT_66 => X"7C000040DFFFFFFFFFFFFFFFFFFFFFFFFFFF4F0C00000040BFFFEF1C00000000",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFEB050000A6FFFFE90000000000000074F3FFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"00004EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFD00000000000000008CFFFFFFFFFFFE10009C9FFFFFFF7F",
      INIT_6F => X"FFFFFFFFFFFFFFBD000000003EFFFFDC000000006CFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E0000007EFFFFFFFFFFFFFF",
      INIT_71 => X"FFB78C003C7BFF7B0000000000000000BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"000000000000BFFFFFFF7F40009C9FFFFFFFFF4E00007FFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"5CDFFFAD00000000004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD000000",
      INIT_79 => X"FFFFFFFFFFFFFFFF8F0C0000CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF5C000000",
      INIT_7A => X"0000000029FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF533000C8DBFF09000000",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => \douta[13]\(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \douta[14]\(0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => ena,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => addra(13),
      I1 => addra(15),
      I2 => addra(14),
      I3 => ena,
      I4 => addra(12),
      O => \^device_7series.no_bmm_info.sp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Welcome_page_blk_mem_gen_prim_width is
  port (
    \douta[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Welcome_page_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end Welcome_page_blk_mem_gen_prim_width;

architecture STRUCTURE of Welcome_page_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.Welcome_page_blk_mem_gen_prim_wrapper_init
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      clka => clka,
      \douta[0]\(0) => \douta[0]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized0\ is
  port (
    \douta[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[1]\(1 downto 0) => \douta[1]\(1 downto 0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized1\ is
  port (
    \douta[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized1\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      clka => clka,
      \douta[1]\(0) => \douta[1]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized10\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized10\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized10\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized10\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized10\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7 downto 0) => \douta[13]\(7 downto 0),
      \douta[14]\(0) => \douta[14]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized11\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized11\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized11\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized11\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized11\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7 downto 0) => \douta[13]\(7 downto 0),
      \douta[14]\(0) => \douta[14]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized12\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized12\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized12\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized12\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized12\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7 downto 0) => \douta[13]\(7 downto 0),
      \douta[14]\(0) => \douta[14]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized13\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized13\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized13\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized13\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized13\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7 downto 0) => \douta[13]\(7 downto 0),
      \douta[14]\(0) => \douta[14]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized14\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized14\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized14\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized14\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized14\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7 downto 0) => \douta[13]\(7 downto 0),
      \douta[14]\(0) => \douta[14]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized15\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPADOP : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ram_ena : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized15\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized15\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized15\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized15\
     port map (
      DOADO(7 downto 0) => DOADO(7 downto 0),
      DOPADOP(0) => DOPADOP(0),
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      ena => ena,
      ram_ena => ram_ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized16\ is
  port (
    p_39_out : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized16\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized16\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized16\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized16\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      ena => ena,
      p_39_out(17 downto 0) => p_39_out(17 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized17\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized17\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized17\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized17\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized17\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \addra[12]\,
      clka => clka,
      \douta[22]\(7 downto 0) => \douta[22]\(7 downto 0),
      \douta[23]\(0) => \douta[23]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized18\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized18\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized18\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized18\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized18\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \addra[12]\,
      clka => clka,
      \douta[22]\(7 downto 0) => \douta[22]\(7 downto 0),
      \douta[23]\(0) => \douta[23]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized19\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized19\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized19\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized19\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized19\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \addra[12]\,
      clka => clka,
      \douta[22]\(7 downto 0) => \douta[22]\(7 downto 0),
      \douta[23]\(0) => \douta[23]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized2\ is
  port (
    \douta[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized2\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      clka => clka,
      \douta[2]\(0) => \douta[2]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized20\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized20\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized20\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized20\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized20\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \addra[12]\,
      clka => clka,
      \douta[22]\(7 downto 0) => \douta[22]\(7 downto 0),
      \douta[23]\(0) => \douta[23]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized21\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized21\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized21\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized21\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized21\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \addra[12]\,
      clka => clka,
      \douta[22]\(7 downto 0) => \douta[22]\(7 downto 0),
      \douta[23]\(0) => \douta[23]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized22\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized22\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized22\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized22\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized22\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \addra[12]\,
      clka => clka,
      \douta[22]\(7 downto 0) => \douta[22]\(7 downto 0),
      \douta[23]\(0) => \douta[23]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized23\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized23\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized23\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized23\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized23\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \addra[12]\,
      clka => clka,
      \douta[22]\(7 downto 0) => \douta[22]\(7 downto 0),
      \douta[23]\(0) => \douta[23]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized24\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized24\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized24\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized24\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized24\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \addra[12]\,
      clka => clka,
      \douta[22]\(7 downto 0) => \douta[22]\(7 downto 0),
      \douta[23]\(0) => \douta[23]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized25\ is
  port (
    \douta[22]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[23]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_ena : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized25\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized25\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized25\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized25\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[22]\(7 downto 0) => \douta[22]\(7 downto 0),
      \douta[23]\(0) => \douta[23]\(0),
      ena => ena,
      ram_ena => ram_ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized3\ is
  port (
    \douta[5]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \addra[12]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized3\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized3\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized3\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized3\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \addra[12]\,
      clka => clka,
      \douta[5]\(3 downto 0) => \douta[5]\(3 downto 0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized4\ is
  port (
    \douta[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized4\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized4\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized4\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized4\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      clka => clka,
      \douta[3]\(0) => \douta[3]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized5\ is
  port (
    \douta[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized5\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized5\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized5\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized5\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      clka => clka,
      \douta[4]\(0) => \douta[4]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized6\ is
  port (
    \douta[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized6\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized6\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized6\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized6\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[5]\(0) => \douta[5]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized7\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized7\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized7\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized7\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized7\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7 downto 0) => \douta[13]\(7 downto 0),
      \douta[14]\(0) => \douta[14]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized8\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized8\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized8\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized8\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized8\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7 downto 0) => \douta[13]\(7 downto 0),
      \douta[14]\(0) => \douta[14]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Welcome_page_blk_mem_gen_prim_width__parameterized9\ is
  port (
    \douta[13]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[14]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Welcome_page_blk_mem_gen_prim_width__parameterized9\ : entity is "blk_mem_gen_prim_width";
end \Welcome_page_blk_mem_gen_prim_width__parameterized9\;

architecture STRUCTURE of \Welcome_page_blk_mem_gen_prim_width__parameterized9\ is
begin
\prim_init.ram\: entity work.\Welcome_page_blk_mem_gen_prim_wrapper_init__parameterized9\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7 downto 0) => \douta[13]\(7 downto 0),
      \douta[14]\(0) => \douta[14]\(0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Welcome_page_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Welcome_page_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end Welcome_page_blk_mem_gen_generic_cstr;

architecture STRUCTURE of Welcome_page_blk_mem_gen_generic_cstr is
  signal p_39_out : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal ram_douta : STD_LOGIC;
  signal ram_ena : STD_LOGIC;
  signal \ramloop[10].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_9\ : STD_LOGIC;
begin
\has_mux_a.A\: entity work.Welcome_page_blk_mem_gen_mux
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(7) => \ramloop[26].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(6) => \ramloop[26].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(5) => \ramloop[26].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(4) => \ramloop[26].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(3) => \ramloop[26].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(2) => \ramloop[26].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(1) => \ramloop[26].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(0) => \ramloop[26].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\(0) => \ramloop[26].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1\(1) => \ramloop[1].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1\(0) => \ramloop[1].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2\(3) => \ramloop[4].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2\(2) => \ramloop[4].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2\(1) => \ramloop[4].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2\(0) => \ramloop[4].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => ram_douta,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[2].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \ramloop[3].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(7) => \ramloop[14].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(6) => \ramloop[14].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(5) => \ramloop[14].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(4) => \ramloop[14].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(3) => \ramloop[14].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(2) => \ramloop[14].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(1) => \ramloop[14].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_10\(0) => \ramloop[14].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(7) => \ramloop[13].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(6) => \ramloop[13].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(5) => \ramloop[13].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(4) => \ramloop[13].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(3) => \ramloop[13].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(2) => \ramloop[13].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(1) => \ramloop[13].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_11\(0) => \ramloop[13].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(7) => \ramloop[12].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(6) => \ramloop[12].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(5) => \ramloop[12].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(4) => \ramloop[12].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(3) => \ramloop[12].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(2) => \ramloop[12].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(1) => \ramloop[12].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_12\(0) => \ramloop[12].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_13\(0) => \ramloop[11].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_14\(0) => \ramloop[10].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_15\(0) => \ramloop[9].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_16\(0) => \ramloop[8].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_17\(0) => \ramloop[15].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_18\(0) => \ramloop[14].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_19\(0) => \ramloop[13].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(0) => \ramloop[5].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_20\(0) => \ramloop[12].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(7) => \ramloop[21].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(6) => \ramloop[21].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(5) => \ramloop[21].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(4) => \ramloop[21].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(3) => \ramloop[21].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(2) => \ramloop[21].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(1) => \ramloop[21].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_21\(0) => \ramloop[21].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(7) => \ramloop[20].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(6) => \ramloop[20].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(5) => \ramloop[20].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(4) => \ramloop[20].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(3) => \ramloop[20].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(2) => \ramloop[20].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(1) => \ramloop[20].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_22\(0) => \ramloop[20].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(7) => \ramloop[19].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(6) => \ramloop[19].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(5) => \ramloop[19].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(4) => \ramloop[19].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(3) => \ramloop[19].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(2) => \ramloop[19].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(1) => \ramloop[19].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_23\(0) => \ramloop[19].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(7) => \ramloop[18].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(6) => \ramloop[18].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(5) => \ramloop[18].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(4) => \ramloop[18].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(3) => \ramloop[18].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(2) => \ramloop[18].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(1) => \ramloop[18].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_24\(0) => \ramloop[18].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(7) => \ramloop[25].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(6) => \ramloop[25].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(5) => \ramloop[25].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(4) => \ramloop[25].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(3) => \ramloop[25].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(2) => \ramloop[25].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(1) => \ramloop[25].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_25\(0) => \ramloop[25].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(7) => \ramloop[24].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(6) => \ramloop[24].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(5) => \ramloop[24].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(4) => \ramloop[24].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(3) => \ramloop[24].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(2) => \ramloop[24].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(1) => \ramloop[24].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_26\(0) => \ramloop[24].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(7) => \ramloop[23].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(6) => \ramloop[23].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(5) => \ramloop[23].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(4) => \ramloop[23].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(3) => \ramloop[23].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(2) => \ramloop[23].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(1) => \ramloop[23].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_27\(0) => \ramloop[23].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(7) => \ramloop[22].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(6) => \ramloop[22].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(5) => \ramloop[22].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(4) => \ramloop[22].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(3) => \ramloop[22].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(2) => \ramloop[22].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(1) => \ramloop[22].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_28\(0) => \ramloop[22].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_29\(0) => \ramloop[21].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(0) => \ramloop[6].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_30\(0) => \ramloop[20].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_31\(0) => \ramloop[19].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_32\(0) => \ramloop[18].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_33\(0) => \ramloop[25].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_34\(0) => \ramloop[24].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_35\(0) => \ramloop[23].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_36\(0) => \ramloop[22].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(0) => \ramloop[7].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(7) => \ramloop[11].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(6) => \ramloop[11].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(5) => \ramloop[11].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(4) => \ramloop[11].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(3) => \ramloop[11].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(2) => \ramloop[11].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(1) => \ramloop[11].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(0) => \ramloop[11].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(7) => \ramloop[10].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(6) => \ramloop[10].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(5) => \ramloop[10].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(4) => \ramloop[10].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(3) => \ramloop[10].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(2) => \ramloop[10].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(1) => \ramloop[10].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(0) => \ramloop[10].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(7) => \ramloop[9].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(6) => \ramloop[9].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(5) => \ramloop[9].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(4) => \ramloop[9].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(3) => \ramloop[9].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(2) => \ramloop[9].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(1) => \ramloop[9].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_7\(0) => \ramloop[9].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(7) => \ramloop[8].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(6) => \ramloop[8].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(5) => \ramloop[8].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(4) => \ramloop[8].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(3) => \ramloop[8].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(2) => \ramloop[8].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(1) => \ramloop[8].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_8\(0) => \ramloop[8].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(7) => \ramloop[15].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(6) => \ramloop[15].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(5) => \ramloop[15].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(4) => \ramloop[15].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(3) => \ramloop[15].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(2) => \ramloop[15].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(1) => \ramloop[15].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_9\(0) => \ramloop[15].ram.r_n_7\,
      DOADO(7) => \ramloop[16].ram.r_n_0\,
      DOADO(6) => \ramloop[16].ram.r_n_1\,
      DOADO(5) => \ramloop[16].ram.r_n_2\,
      DOADO(4) => \ramloop[16].ram.r_n_3\,
      DOADO(3) => \ramloop[16].ram.r_n_4\,
      DOADO(2) => \ramloop[16].ram.r_n_5\,
      DOADO(1) => \ramloop[16].ram.r_n_6\,
      DOADO(0) => \ramloop[16].ram.r_n_7\,
      DOPADOP(0) => \ramloop[16].ram.r_n_8\,
      addra(5 downto 0) => addra(15 downto 10),
      clka => clka,
      douta(23 downto 0) => douta(23 downto 0),
      ena => ena,
      p_39_out(17 downto 0) => p_39_out(17 downto 0)
    );
\ramloop[0].ram.r\: entity work.Welcome_page_blk_mem_gen_prim_width
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \ramloop[7].ram.r_n_1\,
      clka => clka,
      \douta[0]\(0) => ram_douta,
      ena => ena
    );
\ramloop[10].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized9\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[10].ram.r_n_9\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7) => \ramloop[10].ram.r_n_0\,
      \douta[13]\(6) => \ramloop[10].ram.r_n_1\,
      \douta[13]\(5) => \ramloop[10].ram.r_n_2\,
      \douta[13]\(4) => \ramloop[10].ram.r_n_3\,
      \douta[13]\(3) => \ramloop[10].ram.r_n_4\,
      \douta[13]\(2) => \ramloop[10].ram.r_n_5\,
      \douta[13]\(1) => \ramloop[10].ram.r_n_6\,
      \douta[13]\(0) => \ramloop[10].ram.r_n_7\,
      \douta[14]\(0) => \ramloop[10].ram.r_n_8\,
      ena => ena
    );
\ramloop[11].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized10\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[11].ram.r_n_9\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7) => \ramloop[11].ram.r_n_0\,
      \douta[13]\(6) => \ramloop[11].ram.r_n_1\,
      \douta[13]\(5) => \ramloop[11].ram.r_n_2\,
      \douta[13]\(4) => \ramloop[11].ram.r_n_3\,
      \douta[13]\(3) => \ramloop[11].ram.r_n_4\,
      \douta[13]\(2) => \ramloop[11].ram.r_n_5\,
      \douta[13]\(1) => \ramloop[11].ram.r_n_6\,
      \douta[13]\(0) => \ramloop[11].ram.r_n_7\,
      \douta[14]\(0) => \ramloop[11].ram.r_n_8\,
      ena => ena
    );
\ramloop[12].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized11\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[12].ram.r_n_9\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7) => \ramloop[12].ram.r_n_0\,
      \douta[13]\(6) => \ramloop[12].ram.r_n_1\,
      \douta[13]\(5) => \ramloop[12].ram.r_n_2\,
      \douta[13]\(4) => \ramloop[12].ram.r_n_3\,
      \douta[13]\(3) => \ramloop[12].ram.r_n_4\,
      \douta[13]\(2) => \ramloop[12].ram.r_n_5\,
      \douta[13]\(1) => \ramloop[12].ram.r_n_6\,
      \douta[13]\(0) => \ramloop[12].ram.r_n_7\,
      \douta[14]\(0) => \ramloop[12].ram.r_n_8\,
      ena => ena
    );
\ramloop[13].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized12\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[13].ram.r_n_9\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7) => \ramloop[13].ram.r_n_0\,
      \douta[13]\(6) => \ramloop[13].ram.r_n_1\,
      \douta[13]\(5) => \ramloop[13].ram.r_n_2\,
      \douta[13]\(4) => \ramloop[13].ram.r_n_3\,
      \douta[13]\(3) => \ramloop[13].ram.r_n_4\,
      \douta[13]\(2) => \ramloop[13].ram.r_n_5\,
      \douta[13]\(1) => \ramloop[13].ram.r_n_6\,
      \douta[13]\(0) => \ramloop[13].ram.r_n_7\,
      \douta[14]\(0) => \ramloop[13].ram.r_n_8\,
      ena => ena
    );
\ramloop[14].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized13\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[14].ram.r_n_9\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7) => \ramloop[14].ram.r_n_0\,
      \douta[13]\(6) => \ramloop[14].ram.r_n_1\,
      \douta[13]\(5) => \ramloop[14].ram.r_n_2\,
      \douta[13]\(4) => \ramloop[14].ram.r_n_3\,
      \douta[13]\(3) => \ramloop[14].ram.r_n_4\,
      \douta[13]\(2) => \ramloop[14].ram.r_n_5\,
      \douta[13]\(1) => \ramloop[14].ram.r_n_6\,
      \douta[13]\(0) => \ramloop[14].ram.r_n_7\,
      \douta[14]\(0) => \ramloop[14].ram.r_n_8\,
      ena => ena
    );
\ramloop[15].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized14\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[15].ram.r_n_9\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7) => \ramloop[15].ram.r_n_0\,
      \douta[13]\(6) => \ramloop[15].ram.r_n_1\,
      \douta[13]\(5) => \ramloop[15].ram.r_n_2\,
      \douta[13]\(4) => \ramloop[15].ram.r_n_3\,
      \douta[13]\(3) => \ramloop[15].ram.r_n_4\,
      \douta[13]\(2) => \ramloop[15].ram.r_n_5\,
      \douta[13]\(1) => \ramloop[15].ram.r_n_6\,
      \douta[13]\(0) => \ramloop[15].ram.r_n_7\,
      \douta[14]\(0) => \ramloop[15].ram.r_n_8\,
      ena => ena
    );
\ramloop[16].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized15\
     port map (
      DOADO(7) => \ramloop[16].ram.r_n_0\,
      DOADO(6) => \ramloop[16].ram.r_n_1\,
      DOADO(5) => \ramloop[16].ram.r_n_2\,
      DOADO(4) => \ramloop[16].ram.r_n_3\,
      DOADO(3) => \ramloop[16].ram.r_n_4\,
      DOADO(2) => \ramloop[16].ram.r_n_5\,
      DOADO(1) => \ramloop[16].ram.r_n_6\,
      DOADO(0) => \ramloop[16].ram.r_n_7\,
      DOPADOP(0) => \ramloop[16].ram.r_n_8\,
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      ena => ena,
      ram_ena => ram_ena
    );
\ramloop[17].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized16\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ => \ramloop[17].ram.r_n_18\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      ena => ena,
      p_39_out(17 downto 0) => p_39_out(17 downto 0)
    );
\ramloop[18].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized17\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \ramloop[8].ram.r_n_9\,
      clka => clka,
      \douta[22]\(7) => \ramloop[18].ram.r_n_0\,
      \douta[22]\(6) => \ramloop[18].ram.r_n_1\,
      \douta[22]\(5) => \ramloop[18].ram.r_n_2\,
      \douta[22]\(4) => \ramloop[18].ram.r_n_3\,
      \douta[22]\(3) => \ramloop[18].ram.r_n_4\,
      \douta[22]\(2) => \ramloop[18].ram.r_n_5\,
      \douta[22]\(1) => \ramloop[18].ram.r_n_6\,
      \douta[22]\(0) => \ramloop[18].ram.r_n_7\,
      \douta[23]\(0) => \ramloop[18].ram.r_n_8\,
      ena => ena
    );
\ramloop[19].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized18\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \ramloop[9].ram.r_n_9\,
      clka => clka,
      \douta[22]\(7) => \ramloop[19].ram.r_n_0\,
      \douta[22]\(6) => \ramloop[19].ram.r_n_1\,
      \douta[22]\(5) => \ramloop[19].ram.r_n_2\,
      \douta[22]\(4) => \ramloop[19].ram.r_n_3\,
      \douta[22]\(3) => \ramloop[19].ram.r_n_4\,
      \douta[22]\(2) => \ramloop[19].ram.r_n_5\,
      \douta[22]\(1) => \ramloop[19].ram.r_n_6\,
      \douta[22]\(0) => \ramloop[19].ram.r_n_7\,
      \douta[23]\(0) => \ramloop[19].ram.r_n_8\,
      ena => ena
    );
\ramloop[1].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized0\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[1]\(1) => \ramloop[1].ram.r_n_0\,
      \douta[1]\(0) => \ramloop[1].ram.r_n_1\,
      ena => ena
    );
\ramloop[20].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized19\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \ramloop[10].ram.r_n_9\,
      clka => clka,
      \douta[22]\(7) => \ramloop[20].ram.r_n_0\,
      \douta[22]\(6) => \ramloop[20].ram.r_n_1\,
      \douta[22]\(5) => \ramloop[20].ram.r_n_2\,
      \douta[22]\(4) => \ramloop[20].ram.r_n_3\,
      \douta[22]\(3) => \ramloop[20].ram.r_n_4\,
      \douta[22]\(2) => \ramloop[20].ram.r_n_5\,
      \douta[22]\(1) => \ramloop[20].ram.r_n_6\,
      \douta[22]\(0) => \ramloop[20].ram.r_n_7\,
      \douta[23]\(0) => \ramloop[20].ram.r_n_8\,
      ena => ena
    );
\ramloop[21].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized20\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \ramloop[11].ram.r_n_9\,
      clka => clka,
      \douta[22]\(7) => \ramloop[21].ram.r_n_0\,
      \douta[22]\(6) => \ramloop[21].ram.r_n_1\,
      \douta[22]\(5) => \ramloop[21].ram.r_n_2\,
      \douta[22]\(4) => \ramloop[21].ram.r_n_3\,
      \douta[22]\(3) => \ramloop[21].ram.r_n_4\,
      \douta[22]\(2) => \ramloop[21].ram.r_n_5\,
      \douta[22]\(1) => \ramloop[21].ram.r_n_6\,
      \douta[22]\(0) => \ramloop[21].ram.r_n_7\,
      \douta[23]\(0) => \ramloop[21].ram.r_n_8\,
      ena => ena
    );
\ramloop[22].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized21\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \ramloop[12].ram.r_n_9\,
      clka => clka,
      \douta[22]\(7) => \ramloop[22].ram.r_n_0\,
      \douta[22]\(6) => \ramloop[22].ram.r_n_1\,
      \douta[22]\(5) => \ramloop[22].ram.r_n_2\,
      \douta[22]\(4) => \ramloop[22].ram.r_n_3\,
      \douta[22]\(3) => \ramloop[22].ram.r_n_4\,
      \douta[22]\(2) => \ramloop[22].ram.r_n_5\,
      \douta[22]\(1) => \ramloop[22].ram.r_n_6\,
      \douta[22]\(0) => \ramloop[22].ram.r_n_7\,
      \douta[23]\(0) => \ramloop[22].ram.r_n_8\,
      ena => ena
    );
\ramloop[23].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized22\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \ramloop[13].ram.r_n_9\,
      clka => clka,
      \douta[22]\(7) => \ramloop[23].ram.r_n_0\,
      \douta[22]\(6) => \ramloop[23].ram.r_n_1\,
      \douta[22]\(5) => \ramloop[23].ram.r_n_2\,
      \douta[22]\(4) => \ramloop[23].ram.r_n_3\,
      \douta[22]\(3) => \ramloop[23].ram.r_n_4\,
      \douta[22]\(2) => \ramloop[23].ram.r_n_5\,
      \douta[22]\(1) => \ramloop[23].ram.r_n_6\,
      \douta[22]\(0) => \ramloop[23].ram.r_n_7\,
      \douta[23]\(0) => \ramloop[23].ram.r_n_8\,
      ena => ena
    );
\ramloop[24].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized23\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \ramloop[14].ram.r_n_9\,
      clka => clka,
      \douta[22]\(7) => \ramloop[24].ram.r_n_0\,
      \douta[22]\(6) => \ramloop[24].ram.r_n_1\,
      \douta[22]\(5) => \ramloop[24].ram.r_n_2\,
      \douta[22]\(4) => \ramloop[24].ram.r_n_3\,
      \douta[22]\(3) => \ramloop[24].ram.r_n_4\,
      \douta[22]\(2) => \ramloop[24].ram.r_n_5\,
      \douta[22]\(1) => \ramloop[24].ram.r_n_6\,
      \douta[22]\(0) => \ramloop[24].ram.r_n_7\,
      \douta[23]\(0) => \ramloop[24].ram.r_n_8\,
      ena => ena
    );
\ramloop[25].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized24\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \ramloop[15].ram.r_n_9\,
      clka => clka,
      \douta[22]\(7) => \ramloop[25].ram.r_n_0\,
      \douta[22]\(6) => \ramloop[25].ram.r_n_1\,
      \douta[22]\(5) => \ramloop[25].ram.r_n_2\,
      \douta[22]\(4) => \ramloop[25].ram.r_n_3\,
      \douta[22]\(3) => \ramloop[25].ram.r_n_4\,
      \douta[22]\(2) => \ramloop[25].ram.r_n_5\,
      \douta[22]\(1) => \ramloop[25].ram.r_n_6\,
      \douta[22]\(0) => \ramloop[25].ram.r_n_7\,
      \douta[23]\(0) => \ramloop[25].ram.r_n_8\,
      ena => ena
    );
\ramloop[26].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized25\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[22]\(7) => \ramloop[26].ram.r_n_0\,
      \douta[22]\(6) => \ramloop[26].ram.r_n_1\,
      \douta[22]\(5) => \ramloop[26].ram.r_n_2\,
      \douta[22]\(4) => \ramloop[26].ram.r_n_3\,
      \douta[22]\(3) => \ramloop[26].ram.r_n_4\,
      \douta[22]\(2) => \ramloop[26].ram.r_n_5\,
      \douta[22]\(1) => \ramloop[26].ram.r_n_6\,
      \douta[22]\(0) => \ramloop[26].ram.r_n_7\,
      \douta[23]\(0) => \ramloop[26].ram.r_n_8\,
      ena => ena,
      ram_ena => ram_ena
    );
\ramloop[2].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized1\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \ramloop[7].ram.r_n_1\,
      clka => clka,
      \douta[1]\(0) => \ramloop[2].ram.r_n_0\,
      ena => ena
    );
\ramloop[3].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized2\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \ramloop[7].ram.r_n_1\,
      clka => clka,
      \douta[2]\(0) => \ramloop[3].ram.r_n_0\,
      ena => ena
    );
\ramloop[4].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized3\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[12]\ => \ramloop[17].ram.r_n_18\,
      clka => clka,
      \douta[5]\(3) => \ramloop[4].ram.r_n_0\,
      \douta[5]\(2) => \ramloop[4].ram.r_n_1\,
      \douta[5]\(1) => \ramloop[4].ram.r_n_2\,
      \douta[5]\(0) => \ramloop[4].ram.r_n_3\,
      ena => ena
    );
\ramloop[5].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized4\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \ramloop[7].ram.r_n_1\,
      clka => clka,
      \douta[3]\(0) => \ramloop[5].ram.r_n_0\,
      ena => ena
    );
\ramloop[6].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized5\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \ramloop[7].ram.r_n_1\,
      clka => clka,
      \douta[4]\(0) => \ramloop[6].ram.r_n_0\,
      ena => ena
    );
\ramloop[7].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized6\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[7].ram.r_n_1\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[5]\(0) => \ramloop[7].ram.r_n_0\,
      ena => ena
    );
\ramloop[8].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized7\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[8].ram.r_n_9\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7) => \ramloop[8].ram.r_n_0\,
      \douta[13]\(6) => \ramloop[8].ram.r_n_1\,
      \douta[13]\(5) => \ramloop[8].ram.r_n_2\,
      \douta[13]\(4) => \ramloop[8].ram.r_n_3\,
      \douta[13]\(3) => \ramloop[8].ram.r_n_4\,
      \douta[13]\(2) => \ramloop[8].ram.r_n_5\,
      \douta[13]\(1) => \ramloop[8].ram.r_n_6\,
      \douta[13]\(0) => \ramloop[8].ram.r_n_7\,
      \douta[14]\(0) => \ramloop[8].ram.r_n_8\,
      ena => ena
    );
\ramloop[9].ram.r\: entity work.\Welcome_page_blk_mem_gen_prim_width__parameterized8\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[9].ram.r_n_9\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[13]\(7) => \ramloop[9].ram.r_n_0\,
      \douta[13]\(6) => \ramloop[9].ram.r_n_1\,
      \douta[13]\(5) => \ramloop[9].ram.r_n_2\,
      \douta[13]\(4) => \ramloop[9].ram.r_n_3\,
      \douta[13]\(3) => \ramloop[9].ram.r_n_4\,
      \douta[13]\(2) => \ramloop[9].ram.r_n_5\,
      \douta[13]\(1) => \ramloop[9].ram.r_n_6\,
      \douta[13]\(0) => \ramloop[9].ram.r_n_7\,
      \douta[14]\(0) => \ramloop[9].ram.r_n_8\,
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Welcome_page_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Welcome_page_blk_mem_gen_top : entity is "blk_mem_gen_top";
end Welcome_page_blk_mem_gen_top;

architecture STRUCTURE of Welcome_page_blk_mem_gen_top is
begin
\valid.cstr\: entity work.Welcome_page_blk_mem_gen_generic_cstr
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(23 downto 0) => douta(23 downto 0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Welcome_page_blk_mem_gen_v8_4_1_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Welcome_page_blk_mem_gen_v8_4_1_synth : entity is "blk_mem_gen_v8_4_1_synth";
end Welcome_page_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of Welcome_page_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.Welcome_page_blk_mem_gen_top
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(23 downto 0) => douta(23 downto 0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Welcome_page_blk_mem_gen_v8_4_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 23 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 23 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of Welcome_page_blk_mem_gen_v8_4_1 : entity is 16;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of Welcome_page_blk_mem_gen_v8_4_1 : entity is 16;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of Welcome_page_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of Welcome_page_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of Welcome_page_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of Welcome_page_blk_mem_gen_v8_4_1 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of Welcome_page_blk_mem_gen_v8_4_1 : entity is "5";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of Welcome_page_blk_mem_gen_v8_4_1 : entity is "22";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of Welcome_page_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of Welcome_page_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of Welcome_page_blk_mem_gen_v8_4_1 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of Welcome_page_blk_mem_gen_v8_4_1 : entity is "Estimated Power for IP     :     17.15077 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of Welcome_page_blk_mem_gen_v8_4_1 : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of Welcome_page_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of Welcome_page_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of Welcome_page_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of Welcome_page_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of Welcome_page_blk_mem_gen_v8_4_1 : entity is "Welcome_page.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of Welcome_page_blk_mem_gen_v8_4_1 : entity is "Welcome_page.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of Welcome_page_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of Welcome_page_blk_mem_gen_v8_4_1 : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of Welcome_page_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of Welcome_page_blk_mem_gen_v8_4_1 : entity is 35000;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of Welcome_page_blk_mem_gen_v8_4_1 : entity is 35000;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of Welcome_page_blk_mem_gen_v8_4_1 : entity is 24;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of Welcome_page_blk_mem_gen_v8_4_1 : entity is 24;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of Welcome_page_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of Welcome_page_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of Welcome_page_blk_mem_gen_v8_4_1 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of Welcome_page_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of Welcome_page_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of Welcome_page_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of Welcome_page_blk_mem_gen_v8_4_1 : entity is 35000;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of Welcome_page_blk_mem_gen_v8_4_1 : entity is 35000;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of Welcome_page_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of Welcome_page_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of Welcome_page_blk_mem_gen_v8_4_1 : entity is 24;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of Welcome_page_blk_mem_gen_v8_4_1 : entity is 24;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of Welcome_page_blk_mem_gen_v8_4_1 : entity is "artix7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Welcome_page_blk_mem_gen_v8_4_1 : entity is "blk_mem_gen_v8_4_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Welcome_page_blk_mem_gen_v8_4_1 : entity is "yes";
end Welcome_page_blk_mem_gen_v8_4_1;

architecture STRUCTURE of Welcome_page_blk_mem_gen_v8_4_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(15) <= \<const0>\;
  rdaddrecc(14) <= \<const0>\;
  rdaddrecc(13) <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(15) <= \<const0>\;
  s_axi_rdaddrecc(14) <= \<const0>\;
  s_axi_rdaddrecc(13) <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.Welcome_page_blk_mem_gen_v8_4_1_synth
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(23 downto 0) => douta(23 downto 0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Welcome_page is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Welcome_page : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Welcome_page : entity is "Welcome_page,blk_mem_gen_v8_4_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Welcome_page : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Welcome_page : entity is "blk_mem_gen_v8_4_1,Vivado 2017.4";
end Welcome_page;

architecture STRUCTURE of Welcome_page is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 16;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 16;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "5";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "22";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     17.15077 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "Welcome_page.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "Welcome_page.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 35000;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 35000;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 24;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 24;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 35000;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 35000;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 24;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 24;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE";
  attribute x_interface_info of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
begin
U0: entity work.Welcome_page_blk_mem_gen_v8_4_1
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => B"0000000000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(23 downto 0) => B"000000000000000000000000",
      dinb(23 downto 0) => B"000000000000000000000000",
      douta(23 downto 0) => douta(23 downto 0),
      doutb(23 downto 0) => NLW_U0_doutb_UNCONNECTED(23 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(15 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(15 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(15 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(15 downto 0),
      s_axi_rdata(23 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(23 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(23 downto 0) => B"000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
