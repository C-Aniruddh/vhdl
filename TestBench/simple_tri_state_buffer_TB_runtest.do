SetActiveLib -work
comp -include "$DSN\src\simple_tri_state_buffer.vhd" 
comp -include "$DSN\src\TestBench\simple_tri_state_buffer_TB.vhd" 
asim TESTBENCH_FOR_simple_tri_state_buffer 
wave 
wave -noreg ena
wave -noreg input
wave -noreg output
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\simple_tri_state_buffer_TB_tim_cfg.vhd" 
# asim TIMING_FOR_simple_tri_state_buffer 
