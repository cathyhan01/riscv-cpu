addi a0, x0, 2000
addi a1, x0, -2035

bltu a0, a1, less_than_u

skip:
addi t0, a0, 45
addi t1, a1, 90
mulh s0, t0, t1
addi s1 s1 36         # end
jalr x0, ra, end

less_than_u:
addi t0, x0, -100
addi t1, x0, -5
mulh s0, t0, t1
jal ra, end

end:
addi a1, x0, 1

addi s5, x0, -78
addi s6, x0, -78
bltu s5, s6, skip
addi s1, x0, -99
