# Processor-Checkpoint4
## Contributor
Name: Xueqian Hu, NetID: xh110

Name: Minzhi Guo, NetID: mg516
## Design Sescription
### Sign Extend
Add the highest bit of the number we want to extend for 16 times.
### Controller
Controller is used to extract information from the instruction. It is kind of like a decoder. For different types of instructions, it get different information, and then give extracted information to different signal and lattencies.
### Clock
We desinged an 8-divided-frequency system, extend the original period to 8 times larger period. In each small period, we have different operations. Based on the slide (page 20), on the posedge of the frist small peiod, the processor does Write Dmem, Write Register and Write PC; on the posedge of the second small peiod, the processor does Read Imem; on the posedge of the second small peiod, the processor does Read Imem; on the posedge of the 6th small peiod, the processor does Read Dmem.
#### There are TWO frequency divider modules:
#### div8
It first divides frequency by 2, then use the ouput as the input of divider-by-4 whose output is the input of divider-by-8.
#### div_1_ctrl
There is a mode-8 counter in it, counting every small period. If we want to do a specific operation on the posedge of ONE period, we set it to 1, otherwise, 0.
### Processor
Added the operation of lattencies to the provided file.
### Skeleton
Added 4 clocks to the provided file.
### ALU & RegFile
We used the provided files.
