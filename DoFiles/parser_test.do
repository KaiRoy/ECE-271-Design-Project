vsim -gui work.parser

add wave *
force d 11010111010110100 @ 0, 10000011011100000 @ 10
run 20 ps