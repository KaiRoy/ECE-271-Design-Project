vsim -gui work.modulator

add wave N
add wave M
add wave clk
add wave reset
add wave out

force -freeze sim:/modulator/clk 1 0, 0 {2 ps} -r 5
force reset 1 @ 0, 0 @ 10
run 1100 ps