jal ra, forward
addi a0, x0, 1775
addi a1, x0, -203
sub a2, a0, a1
addi a3, x0, 2000
jal ra, forward_again
addi a1, x0, 2
slti a1, a1, 5
jal ra, end

forward_again:
sub a2, a2, a3
jalr x0, ra, 0

forward:
addi a4, x0, -1
jalr x0, ra, 0

end:
addi a0, x0, -100
