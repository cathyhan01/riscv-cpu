addi a0, x0, -2000
addi a1, x0, -155

bgeu a0, a1, greaterequal_u

skip:
addi t0, a0, 45
addi t1, a1, 90
mulh s0, t0, t1
addi s1 s1 36         # end
jal x0, true_end

greaterequal_u:
addi t0, x0, -100
addi t1, x0, -5
mulh s0, t0, t1
jal x0, semi_end

semi_end:
addi a1, x0, 1

addi s5, x0, 10
addi s6, x0, 100
addi t0, x0, -55

bgeu t0, s6, skip
addi t3, x0, 55

bgeu s5, t0, skip
addi s1, x0, -99

true_end:
addi a0, x0, -1
