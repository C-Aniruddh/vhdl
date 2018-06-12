SetActiveLib -work
comp -include "$DSN\src\bcd_counter_fsm.vhd" 
comp -include "$DSN\src\TestBench\bcd_counter_TB.vhd" 
asim TESTBENCH_FOR_bcd_counter 
wave 
wave -noreg in_clk
wave -noreg rst
wave -noreg output_vector
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\bcd_counter_TB_tim_cfg.vhd" 
# asim TIMING_FOR_bcd_counter 
