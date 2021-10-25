# Processor-Checkpoint4
## Contributor
Name: Xueqian Hu, NetID: xh110

Name: Minzhi Guo, NetID: mg516
## Design Sescription
### Controller
Controller is used to extract information from the instruction. It is kind of like a decoder. For different types of instructions, it get different information, and then give extracted information to different signal and lattencies.
### Processor
### Clock
We desinged an 8-divided-frequency system, extend the original period to 8 times larger period. In each small period, we have different operations. Based on the slide (page 20), on the posedge of the frist small peiod, the processor does Write Dmem, Write Register and Write PC; on the posedge of the second small peiod, the processor does Read Imem; on the posedge of the second small peiod, the processor does Read Dmem

There are three frequency divider modules:
#### div8
#### 
####
