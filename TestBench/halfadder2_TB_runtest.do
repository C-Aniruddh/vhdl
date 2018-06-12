SetActiveLib -work
comp -include "$DSN\src\half_adder.vhd" 
comp -include "$DSN\src\TestBench\halfadder2_TB.vhd" 
asim TESTBENCH_FOR_halfadder2 
wave 
wave -noreg a
wave -noreg b
wave -noreg s
wave -noreg c
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\halfadder2_TB_tim_cfg.vhd" 
# asim TIMING_FOR_halfadder2 
