# CS61CPU

Look ma, I made a CPU! Here's what I did:

- Implemented the ALU in alu.circ for various instructions including add, sll, slt, xor, srl, or, and, mul, mulh, mulhu, sub, sra, and bsel. Logic input and MUXes were used.

- Implemented all 32 registers in RegFile with inputs including clock, RegWEn, rs1, rs2, rd, and wb. A single DEMUX was used to determine which register we are writing to, and two MUXes were used to determine which two source registers to read from. Outputs of RegFile are Read_Data_1 and Read_Data_2.

- Connected parts of the CPU together to implement a working RISC-V addi instruction. Five stages of the single cycle datapath are followed: Instruction Fetch(grab instruction from IMEM, output appropriate program counter), Instruction Decode(split instructions up by bits), Execute(ALU and Branch-comparator), Memory(Read/write to our Data Memory), and Writeback(determine what we're writing back to the destination register).

- In part b, then implemented the remaining ISA including R-type, I-type, S-type, B-type, U-type, and J-type instructions. Control status registers were also implemented. Implementing the entire ISA involved designing the correct and necessary control logic for the Execute stage, implementing the Immediate Generator for each instruction type that had an immediate, and also implementing the Branch Comparator for comparing the two source registers read from RegFile.

- Used a hard-wired approach to designing the control logic with numerous large muxes that base the output on what the instruction's opcode bits are, and if necessary(for certain R and I-type instructions), what the instruction's funct3 bits are. Advantages of this design is that it is easy to understand and that it's also straightforward to add more instructions if needed. Downsides to this design is that it does not elegantly handle undefined instructions outside of what is explicitly implemented.

- Wrote custom extensive unit, integration, and edge case tests in RISC-V to test all 32 registers, all instructions in ISA, and upper limits for branches and jumps.

- Implemented a 2-stage pipeline: Instruction Fetch and Execute(includes what was originally Instruction Decode, Execute, Memory, and Writeback as described above). Used registers to store cpu state and took into account using nops when we take a branch and everytime we jump.

- All written tests hold for pipelined CPU.

- The most challenging part of designing this CPU was implementing the load and store instructions to Memory correctly. A write enable mask was necessary to write the correct byte or halfword to memory for store instructions, and the data value to be written must be shifted appropriately based on this write enable mask before going to memory and accessing the write address outputted from the ALU. And for load instructions, the outputted read data from DMEM had to be shifted an appropriate amount depending on if the instruction was a load-word, load-halfword, or load-byte. All of this involved closely debugging the load and store instructions. Finally, I encountered an oscillation error when implementing the 2-stage pipeline design, and this error was propagating pretty much everywhere in the CPU, so it was difficult to find the root cause. My solution to this was finding where the oscillation error first occurrs, and then moving the nop mux to before the instruction register.
