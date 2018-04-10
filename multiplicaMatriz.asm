lw $r1, 0($r4)
lw $r2, 4 ($r4)
lw $r3, 8 ($r4)

add $r1, $r1, $r1
add $r2, $r2, $r2
add $r3, $r3, $r3
add $r1, $r1, $r2
add $r1, $r1, $r3

sw $r1,40($r4)
sw $r1,44($r4)
sw $r1,48($r4)

addi $r4, $r4, 12
addi $r0, $r0, -1

beq $r0, $r5, 1
j -52 
