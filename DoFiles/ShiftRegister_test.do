vsim -gui work.ShiftRegister

add wave *
force -freeze sim:/ShiftRegister/clk 1 0, 0 {5 ps} -r 10
force reset 1 @ 0, 0 @ 10
force sin  1 @ 0, 0 @ 50, 1 @ 100, 0 @ 120
run 150 ps