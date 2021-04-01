addi a0, x0, 2040
addi a1, x0, 100
sb a1, 1(a0)
lb t0, 1(a0)

addi s3, x0, 1800
addi s4, x0, 9
sb s4, 2(s3)
lb t1, 2(s3)

addi s4, x0, 1000
addi s5, x0, 167
sb s5, 1(s4)
lb t0, 1(s4)

addi s0, x0, 1924
addi s6, x0, -2048
sb s6, 0(s0)
lb s1, 0(s0)

addi sp, x0, 1001
addi t1, x0, -2048
sb t1, 0(sp)
lb ra, 0(sp)

addi sp, x0, 1001
addi t2, x0, 2047
sb t2, 1(sp)
lb ra, 1(sp)

addi sp, x0, 1001
addi s8, x0, 348
sb s8, 2(sp)
lb ra, 2(sp)

addi sp, x0, 1001
addi s9, x0, -2047
sb s9, 3(sp)
lb ra, 3(sp)

addi sp, x0, 1001
addi s0, x0, -20
sb s0, 42(sp)
lb ra, 42(sp)
