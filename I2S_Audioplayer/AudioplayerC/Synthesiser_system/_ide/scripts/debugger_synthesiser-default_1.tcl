# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\GIT\SoCMyCock_Project\I2S_Audioplayer\AudioplayerC\Synthesiser_system\_ide\scripts\debugger_synthesiser-default_1.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\GIT\SoCMyCock_Project\I2S_Audioplayer\AudioplayerC\Synthesiser_system\_ide\scripts\debugger_synthesiser-default_1.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Avnet MiniZed V1 1234-oj1A" && level==0 && jtag_device_ctx=="jsn-MiniZed V1-1234-oj1A-13723093-0"}
fpga -file D:/GIT/SoCMyCock_Project/I2S_Audioplayer/AudioplayerC/Synthesiser/_ide/bitstream/LowerFreqButtons.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/GIT/SoCMyCock_Project/I2S_Audioplayer/AudioplayerC/LowerFreqButtons/export/LowerFreqButtons/hw/LowerFreqButtons.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/GIT/SoCMyCock_Project/I2S_Audioplayer/AudioplayerC/Synthesiser/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/GIT/SoCMyCock_Project/I2S_Audioplayer/AudioplayerC/Synthesiser/Debug/Synthesiser.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
