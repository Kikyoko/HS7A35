open_project DESIGN.xpr

# add sources
add_files -quiet ./DESIGN.srcs/constrs_1/pin.xdc
add_files -quiet ./DESIGN.srcs/constrs_1/timing.xdc
add_files -quiet ./DESIGN.srcs/sources_1/HS7A35_TOP.sv

# Update to set top and file compile order
set_property top HS7A35_TOP [current_fileset]
update_compile_order -fileset sources_1

launch_runs synth_1 -jobs 4
wait_on_run synth_1

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

exit
