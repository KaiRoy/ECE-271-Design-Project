vsim -gui work.Roll

add wave clk
add wave button
add wave en
add wave LED

force -freeze sim:/Roll/clk 1 0, 0 {5 ps} -r 10
force button 1 @ 0, 0 @ 50, 1 @ 100, 0 @ 250

run 300 ps