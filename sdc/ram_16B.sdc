###############################################################################
# Created by write_sdc
# Mon Dec  5 12:54:02 2022
###############################################################################
current_design ram_16B
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 24.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {address[0]}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {address[1]}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {address[2]}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {address[3]}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[0]}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[1]}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[2]}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[3]}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[4]}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[5]}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[6]}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[7]}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {rd_wr}]
set_output_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_out[0]}]
set_output_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_out[1]}]
set_output_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_out[2]}]
set_output_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_out[3]}]
set_output_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_out[4]}]
set_output_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_out[5]}]
set_output_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_out[6]}]
set_output_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {data_out[7]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0729 [get_ports {data_out[7]}]
set_load -pin_load 0.0729 [get_ports {data_out[6]}]
set_load -pin_load 0.0729 [get_ports {data_out[5]}]
set_load -pin_load 0.0729 [get_ports {data_out[4]}]
set_load -pin_load 0.0729 [get_ports {data_out[3]}]
set_load -pin_load 0.0729 [get_ports {data_out[2]}]
set_load -pin_load 0.0729 [get_ports {data_out[1]}]
set_load -pin_load 0.0729 [get_ports {data_out[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_4 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rd_wr}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {address[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {address[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {address[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {address[0]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[7]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[6]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[5]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[4]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[3]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[2]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[1]}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_1 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 4.0000 [current_design]
