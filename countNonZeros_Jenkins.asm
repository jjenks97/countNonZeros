.data
array: .word 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 0

.text
main: move $s0, $zero
la $a0, array

loop: sll $t0, $s0, 2
add $t1, $a0, $t0
bnez  0($t1), loop
addi $s0, $s0, 1

li $v0, 1
la $a1, $s0
syscall



