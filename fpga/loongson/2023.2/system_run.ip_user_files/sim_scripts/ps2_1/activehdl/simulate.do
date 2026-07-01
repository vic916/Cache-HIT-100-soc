transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ps2  -L xpm -L fifo_generator_v13_2_9 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ps2 xil_defaultlib.glbl

do {ps2.udo}

run 1000ns

endsim

quit -force
