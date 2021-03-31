addi a0, x0, 155
addi a1, x0, 155

beq a0, a1, equal

not_eq:
addi t0, a0, 45
addi t1, a1, 90
mulh s0, t0, t1
addi s1 s1 36         # end
jal ra, end

equal:
addi t0, x0, -100
addi t1, x0, -5
mulh s0, t0, t1
jal ra, end

end:
addi a1, x0, 1
beq s0, a1, not_eq
addi a1, x0, 1000
