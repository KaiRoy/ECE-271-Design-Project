vsim -gui work.counter

add wave *

force -freeze sim:/counter/clk 1 0, 0 {2 ps} -r 10
force reset 1 @ 0, 0 @ 10
 
run 100