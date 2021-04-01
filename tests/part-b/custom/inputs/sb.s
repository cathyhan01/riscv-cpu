addi a0, x0, 3
addi t0, x0, 2004
sb a0, 0(t0)
lw s0, 0(t0)

addi s0, x0, -2048
addi a0, x0, 1800
sb s0, 1(a0)
lw s1, 0(a0)

addi t1, x0, 1200
addi s3, x0, 2040
sb t1, 2(s3)
lw t2, 0(s3)

addi t2, x0, 3
addi s1, x0, 1700
sb t2, 3(s1)
lw t1, 0(s1)

addi a1, x0, 50
addi a2, x0, 1003
sb a1, 0(a2)
addi a2, a2, -3
lw a0, 0(a2)

addi a1, x0, 50
addi a2, x0, 1003
sb a1, 1(a2)
addi a2, a2, -3
lw a0, 0(a2)

addi a1, x0, 50
addi a2, x0, 1003
sb a1, 2(a2)
addi a2, x0, 1004
lw a0, 0(a2)

addi a1, x0, 50
addi a2, x0, 1003
sb a1, 3(a2)
addi a2, x0, 1004
lw a0, 0(a2)

addi a1, x0, 50
addi a2, x0, 1003
sb a1, 4(a2)
addi a2, x0, 1004
lw a0, 0(a2)

addi a1, x0, 50
addi a2, x0, 1003
sb a1, 80(a2)
lw a0, 77(a2)
