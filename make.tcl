source regenerate_project.tcl

# open_project microblaze_test_project/microblaze_test_project.xpr

update_compile_order -fileset sources_1

launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1

exec mkdir hw

file copy -force microblaze_test_project/microblaze_test_project.runs/impl_1/test_blockdesign_wrapper.sysdef hw/test_blockdesign_wrapper.hdf
