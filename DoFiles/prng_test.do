vsim -gui work.prng

add wave clk
add wave reset
add wave q

force -freeze sim:/prng/clk 1 0, 0 {5 ps} -r 10
force reset 1 @ 0, 0 @ 10
run 1000