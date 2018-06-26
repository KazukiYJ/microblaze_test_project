setws .

createhw -name test_blockdesign_wrapper_hw_0 -hwspec ../hw/test_blockdesign_wrapper.hdf

createbsp -name test_application_bsp -mss system.mss -hwproject test_blockdesign_wrapper_hw_0

importprojects test_application

projects -build
