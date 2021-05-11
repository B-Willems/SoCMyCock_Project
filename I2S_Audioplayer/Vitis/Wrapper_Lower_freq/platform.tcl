# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Downloads\ZYBO-master\projects\DigitalAudio\I2S_Audioplayer\Vitis\Wrapper_Lower_freq\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Downloads\ZYBO-master\projects\DigitalAudio\I2S_Audioplayer\Vitis\Wrapper_Lower_freq\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Wrapper_Lower_freq}\
-hw {D:\Downloads\ZYBO-master\projects\DigitalAudio\I2S_Audioplayer\hardware\Wrapper_Lower_freq.xsa}\
-fsbl-target {psu_cortexa53_0} -out {D:/Downloads/ZYBO-master/projects/DigitalAudio/I2S_Audioplayer/Vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {Wrapper_Lower_freq}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
