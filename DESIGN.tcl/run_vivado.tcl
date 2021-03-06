open_project DESIGN.xpr

# add sources
add_files -fileset constrs_1 -norecurse ./DESIGN.srcs/constrs_1/pin.xdc
add_files -fileset constrs_1 -norecurse ./DESIGN.srcs/constrs_1/timing.xdc

add_files -norecurse ./DESIGN.srcs/sources_1/FPGA_DEFINE.vh
add_files -norecurse ./DESIGN.srcs/sources_1/DEFINE_FUNC.vh

add_files -quiet ./DESIGN.srcs/sources_1/HS7A35_TOP.sv
add_files -quiet ./DESIGN.srcs/sources_1/CLK_RST/CLK_RST.sv
add_files -quiet ./DESIGN.srcs/sources_1/ip/MMCM_SYS_CLK/MMCM_SYS_CLK.xci
add_files -quiet ./DESIGN.srcs/sources_1/ip/SYNC_DRAM_6x32_6x32/SYNC_DRAM_6x32_6x32.xci
add_files -quiet ./DESIGN.srcs/sources_1/USER_IP/Function/DRAM_FIFO/DRAM_SYNC_FIFO.sv
add_files -quiet ./DESIGN.srcs/sources_1/SYS_REG/SYS_REG.sv
add_files -quiet ./DESIGN.srcs/sources_1/UART_CTL/UART_CTL.sv
add_files -quiet ./DESIGN.srcs/sources_1/UART_CTL/UART_DECODE.sv
add_files -quiet ./DESIGN.srcs/sources_1/USER_IP/Function/ASCII_TO_HEX/ASCII_TO_HEX.sv
add_files -quiet ./DESIGN.srcs/sources_1/USER_IP/Interface/UART/UART_IF.sv
add_files -quiet ./DESIGN.srcs/sources_1/USER_IP/Interface/UART/UART_RX.sv
add_files -quiet ./DESIGN.srcs/sources_1/USER_IP/Interface/UART/UART_TX.sv

# Update to set top and file compile order
set_property top HS7A35_TOP [current_fileset]
update_compile_order -fileset sources_1

launch_runs synth_1 -jobs 4
wait_on_run synth_1

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

exit
