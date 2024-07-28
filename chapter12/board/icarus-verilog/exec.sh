iverilog -g2012 -o test_top.vvp test_top.sv ../../main/top.sv ../../main/prescaler.sv ../../main/mother_board.sv ../../main/mother_board/cpu.sv ../../main/mother_board/rom.sv
vvp -N test_top.vvp +vcd
gtkwave test_top.vcd
