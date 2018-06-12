SetActiveLib -work
comp -include "$DSN\src\sar_state.vhd" 
comp -include "$DSN\src\TestBench\sar_state_TB.vhd" 
asim TESTBENCH_FOR_sar_state 
wave 
wave -noreg in_clk
wave -noreg rst_n
wave -noreg start
wave -noreg comp_in
wave -noreg data_out
wave -noreg D_out
wave -noreg B_hold
wave -noreg sample
wave -noreg hold
wave -noreg eoc
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\sar_state_TB_tim_cfg.vhd" 
# asim TIMING_FOR_sar_state 
