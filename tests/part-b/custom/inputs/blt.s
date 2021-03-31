addi a0, x0, 2000
addi a1, x0, -155

blt a1, a0, less_than

skip:
addi t0, a0, 45
addi t1, a1, 90
mulh s0, t0, t1
addi s1 s1 36         # end
jr s1

less_than:
addi t0, x0, -100
addi t1, x0, -5
mulh s0, t0, t1
j end

end:
addi a1, x0, 1

addi s5, x0, 10
addi s6, x0, 10
blt s5, s6, skip
addi s1, x0, -99
