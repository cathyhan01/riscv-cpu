jal ra, forward # ra=pc+4     #0

addi a0, x0, 1775 #3
addi a1, x0, -203 #4
sub a2, a0, a1 #5
addi a3, x0, 2000 #6

jal ra, forward_again #ra=pc+4         #7

addi a1, x0, 2 #10
slti a1, a1, 5 #11

jalr x0, ra, 12 #throwaway ra, ra line below line #9

forward_again:
sub a2, a2, a3 #8
jalr ra, ra, 0 #ra=pc+4        #9

forward:
addi a4, x0, -1 #1
jalr x0, ra, 0 # throwaway ra, ra still = pc+4     #2

end:
addi a0, x0, -100
