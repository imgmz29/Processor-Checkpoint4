# Processor-Checkpoint4
## Contributor
Name: Xueqian Hu, NetID: xh110

Name: Minzhi Guo, NetID: mg516
## Design Sescription
### Controller
Controller is used to extract information from the instruction. It is kind of like a decoder. For different types of instructions, it get different information, and then give extracted information to different signal and lattencies.
### Clock
We desinged an 8-divided-frequency system, extend the original period to 8 times larger period. In each small period, we have different operations. Based on the slide (page 20), on the posedge of the frist small peiod, the processor does Write Dmem, Write Register and Write PC; on the posedge of the second small peiod, the processor does Read Imem; on the posedge of the second small peiod, the processor does Read Imem; on the posedge of the 4th small peiod, the processor does Read Reg File; on the posedge of the 6th small peiod, the processor does Read Dmem.

There are three frequency divider modules:
#### div8
It divide the clock frequency by 8. First divide by 2, then take the divided clock as the input of divide-by-4 whose output is the input of divide-by-8.

The proceesor uses it.
#### div_1_ctrl
There is a mode-8 counter in it, counting every small period. If we want to do a specific operation on the posedge of ONE period, we set it to 1, otherwise, 0.

Imem uses it.
#### div_2_ctrl
There is a mode-8 counter in it, counting every small period. If we want to do a specific operation on the posedge of TWO periods, we set them to 1, otherwise, 0.

Dmem and Reg File use it.
### Processor
Added the operation of lattencies to the provided file.
### Skeleton
Added 4 clocks to the provided file.
### ALU & RegFile
We used the provided files.
