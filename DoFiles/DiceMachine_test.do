vsim -gui work.DiceMachine

add wave clk
add wave resetButton
add wave button
add wave en
add wave switch
add wave LED
add wave seg0
add wave seg1
add wave seg2
add wave seg3
add wave seg4
add wave seg5

force -freeze sim:/DiceMachine/clk 1 0, 0 {2 ps} -r 5
force resetButton 0 @ 0, 1 @ 10
force button 0 @ 10, 1 @ 500, 0 @ 600, 1 @ 1900, 0 @ 2000, 1 @ 3500
force switch 000111 @ 0, 111111 @ 2000

run 4500 ps
