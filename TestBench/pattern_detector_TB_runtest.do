SetActiveLib -work
comp -include "$DSN\src\pattern_detector.vhd" 
comp -include "$DSN\src\TestBench\pattern_detector_TB.vhd" 
asim TESTBENCH_FOR_pattern_detector 
wave 
wave -noreg d
wave -noreg in_clk
wave -noreg rst
wave -noreg output
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\pattern_detector_TB_tim_cfg.vhd" 
# asim TIMING_FOR_pattern_detector 
