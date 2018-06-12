SetActiveLib -work
comp -include "$DSN\src\sar.vhd" 
comp -include "$DSN\src\TestBench\sar_TB.vhd" 
asim TESTBENCH_FOR_sar 
wave 
wave -noreg in_clk
wave -noreg comp_in
wave -noreg output_vector
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\sar_TB_tim_cfg.vhd" 
# asim TIMING_FOR_sar 
