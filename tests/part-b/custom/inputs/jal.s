addi a0, x0, 1775
addi a1, x0, -203
sub a2, a0, a1
addi a3, x0, 2000
jal ra, forward

backward:
sub a2, a2, a3
j end

forward:
li a0, -1
addi a4, x0, -1
jal x0, backward

end:
addi a0, x0, -100
