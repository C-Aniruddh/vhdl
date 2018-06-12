SetActiveLib -work
comp -include "$DSN\src\generic_parity_detector.vhd" 
comp -include "$DSN\src\TestBench\parity_detector_TB.vhd" 
asim TESTBENCH_FOR_parity_detector 
wave 
wave -noreg input_vector
wave -noreg output
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\parity_detector_TB_tim_cfg.vhd" 
# asim TIMING_FOR_parity_detector 
