SetActiveLib -work
comp -include "$DSN\src\seven_segment_better.vhd" 
comp -include "$DSN\src\TestBench\seven_segment_better_TB.vhd" 
asim TESTBENCH_FOR_seven_segment_better 
wave 
wave -noreg X
wave -noreg a
wave -noreg b
wave -noreg c
wave -noreg d
wave -noreg e
wave -noreg f
wave -noreg g
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\seven_segment_better_TB_tim_cfg.vhd" 
# asim TIMING_FOR_seven_segment_better 
