vsim -gui work.sevSegDecoder

add wave *
force d 10#1 @ 0, 10#2 @ 10, 10#3 @ 20, 10#4 @ 30, 10#5 @ 40, 10#6 @ 50
run 60 ps