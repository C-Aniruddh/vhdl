SetActiveLib -work
comp -include "$DSN\src\sar_better.vhd" 
comp -include "$DSN\src\TestBench\saregister_TB.vhd" 
asim TESTBENCH_FOR_saregister 
wave 
wave -noreg in_clk
wave -noreg comp_in
wave -noreg rst_in
wave -noreg a
wave -noreg output_vector
wave -noreg end_c
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\saregister_TB_tim_cfg.vhd" 
# asim TIMING_FOR_saregister 
