# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Downloads\ZYBO-master\projects\DigitalAudio\I2S_Audioplayer\software\System_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Downloads\ZYBO-master\projects\DigitalAudio\I2S_Audioplayer\software\System_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {System_wrapper}\
-hw {D:\Downloads\ZYBO-master\projects\DigitalAudio\I2S_Audioplayer\hardware\System_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {D:/Downloads/ZYBO-master/projects/DigitalAudio/I2S_Audioplayer/software}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {System_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp reload
bsp config stdin "ps7_uart_1"
bsp config stdout "ps7_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {System_wrapper}
bsp reload
domain active {zynq_fsbl}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp setlib -name xilffs -ver 4.4
bsp write
bsp reload
catch {bsp regenerate}
bsp config use_lfn "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp write
platform generate -domains 
