SetActiveLib -work
comp -include "$DSN\src\full_adder.vhd" 
comp -include "$DSN\src\TestBench\fulladder_TB.vhd" 
asim TESTBENCH_FOR_fulladder 
wave 
wave -noreg X
wave -noreg Y
wave -noreg Z
wave -noreg S
wave -noreg Ca
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\fulladder_TB_tim_cfg.vhd" 
# asim TIMING_FOR_fulladder 
