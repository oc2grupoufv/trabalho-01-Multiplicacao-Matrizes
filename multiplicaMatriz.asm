addi $k1,$k1,3 #TAMANHO DA MATRIZ

loop: lw $at,0($gp) 
lw $v0,4($gp)
lw $v1,8($gp) 

add $at,$at,$at
add $v0,$v0,$v0
add $v1,$v1,$v1
add $at,$at,$v0
add $at,$at,$v1

sw $at,40($gp)
sw $at,44($gp)
sw $at,48($gp)

addi $gp,$gp,12

addi $k1,$k1,-1
beq $k1, $zero, fim
jal loop
fim:
