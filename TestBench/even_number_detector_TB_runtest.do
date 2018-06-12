SetActiveLib -work
comp -include "$DSN\src\even_numbers.vhd" 
comp -include "$DSN\src\TestBench\even_number_detector_TB.vhd" 
asim TESTBENCH_FOR_even_number_detector 
wave 
wave -noreg A
wave -noreg Q
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\even_number_detector_TB_tim_cfg.vhd" 
# asim TIMING_FOR_even_number_detector 
