set remotetimeout 20 
shell start /B ./MiCoder/OpenOCD/Win32/openocd_mico.exe -f .//makefiles/OpenOCD/interface/jlink_swd.cfg -f .//makefiles/OpenOCD/stm32f4x/stm32f4x.cfg -f .//makefiles/OpenOCD/stm32f4x/stm32f4x_gdb_jtag.cfg -l build/openocd_log.txt 
