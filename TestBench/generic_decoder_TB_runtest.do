SetActiveLib -work
comp -include "$DSN\src\generic_decoder.vhd" 
comp -include "$DSN\src\TestBench\generic_decoder_TB.vhd" 
asim TESTBENCH_FOR_generic_decoder 
wave 
wave -noreg ena
wave -noreg sel
wave -noreg x
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\generic_decoder_TB_tim_cfg.vhd" 
# asim TIMING_FOR_generic_decoder 
