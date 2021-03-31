addi a0, x0, -200
addi a1, x0, 2047

bne a0, a1, not_equal

eq:
addi t0, a0, 45
addi t1, a1, 90
mulh s0, t0, t1
addi s1 s1 36         # end
jr s1

not_equal:
addi t0, x0, -100
addi t1, x0, -5
mulh s0, t0, t1
j end

end:
addi a1, x0, 1

bne x0, x0, eq
addi a1, x0, 999
