SetActiveLib -work
comp -include "$DSN\src\traffic_light_controller.vhd" 
comp -include "$DSN\src\TestBench\traffic_light_controller_TB.vhd" 
asim TESTBENCH_FOR_traffic_light_controller 
wave 
wave -noreg standby
wave -noreg test
wave -noreg in_clk
wave -noreg r1
wave -noreg r2
wave -noreg g1
wave -noreg g2
wave -noreg y1
wave -noreg y2
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\traffic_light_controller_TB_tim_cfg.vhd" 
# asim TIMING_FOR_traffic_light_controller 
