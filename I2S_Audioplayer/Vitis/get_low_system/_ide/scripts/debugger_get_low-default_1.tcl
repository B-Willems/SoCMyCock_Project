# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\Downloads\ZYBO-master\projects\DigitalAudio\I2S_Audioplayer\Vitis\get_low_system\_ide\scripts\debugger_get_low-default_1.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\Downloads\ZYBO-master\projects\DigitalAudio\I2S_Audioplayer\Vitis\get_low_system\_ide\scripts\debugger_get_low-default_1.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Avnet MiniZed V1 1234-oj1A" && level==0 && jtag_device_ctx=="jsn-MiniZed V1-1234-oj1A-13723093-0"}
fpga -file D:/Downloads/ZYBO-master/projects/DigitalAudio/I2S_Audioplayer/Vitis/get_low/_ide/bitstream/Wrapper_Lower_freq.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/Downloads/ZYBO-master/projects/DigitalAudio/I2S_Audioplayer/Vitis/Wrapper_Lower_freq/export/Wrapper_Lower_freq/hw/Wrapper_Lower_freq.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/Downloads/ZYBO-master/projects/DigitalAudio/I2S_Audioplayer/Vitis/get_low/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/Downloads/ZYBO-master/projects/DigitalAudio/I2S_Audioplayer/Vitis/get_low/Debug/get_low.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
