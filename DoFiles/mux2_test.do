vsim -gui work.mux2

add wave *
force s 0 @ 0, 1 @ 10, 0 @ 30
force d1 1111001 @ 0, 1001001 @ 20
run 40