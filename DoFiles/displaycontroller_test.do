vsim -gui work.DisplayController

add wave *
force -freeze sim:/DisplayController/clk 1 0, 0 {5 ps} -r 10
force reset 1 @ 0, 0 @ 10
force en 0 @ 0, 1 @ 5, 0 @ 45, 1 @ 55
force s 0 @ 0, 1 @ 10, 0 @ 60
force d 10#0 @ 0, 10#1 @ 15, 10#2 @ 25, 10#3 @ 35, 10#4 @ 45, 10#5 @ 55, 10#6 @ 65
run 80