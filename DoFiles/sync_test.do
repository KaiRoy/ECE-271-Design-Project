vsim -gui work.sync

add wave clk
add wave d
add wave q

force -freeze sim:/sync/clk 1 0, 0 {5 ps} -r 10
force d 0 @ 0, 1 @ 20, 0 @ 40
run 50 ps