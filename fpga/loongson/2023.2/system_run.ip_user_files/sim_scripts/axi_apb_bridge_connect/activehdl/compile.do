transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/lib_pkg_v1_0_3
vlib activehdl/axi_apb_bridge_v3_0_19
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap lib_pkg_v1_0_3 activehdl/lib_pkg_v1_0_3
vmap axi_apb_bridge_v3_0_19 activehdl/axi_apb_bridge_v3_0_19
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 -l xpm -l lib_pkg_v1_0_3 -l axi_apb_bridge_v3_0_19 -l xil_defaultlib \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_pkg_v1_0_3 -93  \
"../../../ipstatic/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_apb_bridge_v3_0_19 -93  \
"../../../ipstatic/hdl/axi_apb_bridge_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../ip/axi_apb_bridge_connect/sim/axi_apb_bridge_connect.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

