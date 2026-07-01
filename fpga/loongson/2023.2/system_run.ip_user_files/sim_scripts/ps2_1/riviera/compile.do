transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/fifo_generator_v13_2_9
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap fifo_generator_v13_2_9 riviera/fifo_generator_v13_2_9
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr -l xpm -l fifo_generator_v13_2_9 -l xil_defaultlib \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -v2k5 -l xpm -l fifo_generator_v13_2_9 -l xil_defaultlib \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -93  -incr \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -v2k5 -l xpm -l fifo_generator_v13_2_9 -l xil_defaultlib \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l fifo_generator_v13_2_9 -l xil_defaultlib \
"../../../ip/ps2_1/src/fifo_ps2_recv/sim/fifo_ps2_recv.v" \
"../../../ip/ps2_1/src/altera_up_ps2.v" \
"../../../ip/ps2_1/src/altera_up_ps2_command_out.v" \
"../../../ip/ps2_1/src/altera_up_ps2_data_in.v" \
"../../../ip/ps2_1/src/testPS2qsys_ps2_0.v" \
"../../../ip/ps2_1/sim/ps2.v" \

vlog -work xil_defaultlib \
"glbl.v"

