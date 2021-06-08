vsim -gui work.DFF

add wave *
force -freeze sim:/DFF/clk 1 0, 0 {5 ps} -r 10
force en 1 @ 0
force reset 1 @ 0, 0 @ 10
force d 1111000 @ 0, 1000110 @ 20
run 30