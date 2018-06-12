SetActiveLib -work
comp -include "$DSN\src\signed_int_adder.vhd" 
comp -include "$DSN\src\TestBench\signed_int_adder_TB.vhd" 
asim TESTBENCH_FOR_signed_int_adder 
wave 
wave -noreg A
wave -noreg B
wave -noreg S
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\signed_int_adder_TB_tim_cfg.vhd" 
# asim TIMING_FOR_signed_int_adder 
