# CS61CPU

Look ma, I made a CPU! Here's what I did:

- Implemented the ALU in alu.circ for various instructions including add, sll, slt, xor, srl, or, and, mul, mulh, mulhu, sub, sra, and bsel. Logic input and MUXes were used.

- Implemented all 32 registers in RegFile with inputs including clock, RegWEn, rs1, rs2, rd, and wb. A single DEMUX was used to determine which register we are writing to, and two MUXes were used to determine which two source registers to read from. Outputs of RegFile are Read_Data_1 and Read_Data_2.

- Connected parts of the CPU together to implement a working RISC-V addi instruction. Five stages of the single cycle datapath are followed: Instruction Fetch(grab instruction from IMEM, output appropriate program counter), Instruction Decode(split instructions up by bits), Execute(ALU and Branch-comparator), Memory(Read/write to our Data Memory), and Writeback(determine what we're writing back).

- In part b, then implemented the remaining ISA including R-type, I-type, S-type, B-type, U-type, and J-type instructions. Control status registers were also implemented.

- Wrote extensive unit, integration, and edge case tests in RISC-V to test all 32 registers, all instructions in ISA, and upper limits for branches and jumps.

- Implemented a 2-stage pipeline: Instruction Fetch and Execute(includes what was originally Instruction Decode, Execute, Memory, and Writeback as described above). Used registers to store cpu state and took into account using nops when we take a branch and everytime we jump.

- Written tests hold for pipelined CPU
