# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\Downloads\ZYBO-master\projects\DigitalAudio\I2S_Audioplayer\software\I2s_audio_player_system\_ide\scripts\debugger_i2s_audio_player-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\Downloads\ZYBO-master\projects\DigitalAudio\I2S_Audioplayer\software\I2s_audio_player_system\_ide\scripts\debugger_i2s_audio_player-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Avnet MiniZed V1 1234-oj1A" && level==0 && jtag_device_ctx=="jsn-MiniZed V1-1234-oj1A-13723093-0"}
fpga -file D:/Downloads/ZYBO-master/projects/DigitalAudio/I2S_Audioplayer/software/I2s_audio_player/_ide/bitstream/System_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/Downloads/ZYBO-master/projects/DigitalAudio/I2S_Audioplayer/software/System_wrapper/export/System_wrapper/hw/System_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/Downloads/ZYBO-master/projects/DigitalAudio/I2S_Audioplayer/software/I2s_audio_player/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/Downloads/ZYBO-master/projects/DigitalAudio/I2S_Audioplayer/software/I2s_audio_player/Debug/I2s_audio_player.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
