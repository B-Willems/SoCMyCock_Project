# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\GIT\SoCMyCock_Project\I2S_Audioplayer\AudioplayerC\LowerFreqButtons\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\GIT\SoCMyCock_Project\I2S_Audioplayer\AudioplayerC\LowerFreqButtons\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {LowerFreqButtons}\
-hw {D:\Downloads\ZYBO-master\projects\DigitalAudio\I2S_Audioplayer\hardware\LowerFreqButtons.xsa}\
-fsbl-target {psu_cortexa53_0} -out {D:/GIT/SoCMyCock_Project/I2S_Audioplayer/AudioplayerC}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {LowerFreqButtons}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp reload
platform generate
