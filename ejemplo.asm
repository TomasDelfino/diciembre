# ejemplo de funciones en MIPS assembly

# funcion suma y factorial en C

# int x = 6;
# int y = 4;

# int sum(int a, int b) {
#   return a + b;
# }

# int fact(int n) {
#   if (n <= 1)
#     return 1;
#   else
#     return n * fact(n - 1);
# }

# int main() {
#   int result = sum(x, y);
#   printf("%d\n", result);
#   result = fact(x);
#   printf("%d\n", result);
# }

.data
x: .word 6                        # int x = 6
y: .word 4                        # int y = 4
newline: .asciiz "\n"

.text
.globl main

sum:      add  $v0, $a0, $a1      # return a + b
          jr   $ra                # return

fact:     addi $sp, $sp, -8       # ajustar call stack para 2 words
          sw   $ra, 4($sp)        # push return address
          sw   $a0, 0($sp)        # push n (argumento)
          slti $t0, $a0, 1        # if (n < 1)
          beq  $t0, $zero, else   # if (n >= 1) goto else
          li   $v0, 1             # return 1
          lw   $a0, 0($sp)        # pop n
          lw   $ra, 4($sp)        # pop return address
          addi $sp, $sp, 8        # ajustar $sp despues de quitar 2 words
          jr   $ra                # return
else:     addi $a0, $a0, -1       # n = n - 1
          jal  fact               # fact(n - 1)
          lw   $a0, 0($sp)        # pop n
          lw   $ra, 4($sp)        # pop return address
          addi $sp, $sp, 8        # ajustar $sp despues de quitar 2 words
          mul  $v0, $a0, $v0      # return n * fact(n - 1)
          jr   $ra                # return

main:     la   $s0, x             #
          la   $s1, y             #
          lw   $a0, 0($s0)        # a = x
          lw   $a1, 0($s1)        # b = y
          jal  sum                # sum(x, y)

          move $a0, $v0           # imprime el resultado de sum(x, y)
          li   $v0, 1             #
          syscall                 # printf("%d", result)

          la   $a0, newline       # imprime \n despues del primer resultado
          li   $v0, 4
          syscall                 # printf("\n")

          lw   $a0, 0($s0)        # n = x
          jal fact

          move $a0, $v0           # imprime el resultado de fact(x)
          li   $v0, 1             #
          syscall                 # printf("%d", result)

          li   $v0, 10            # exit syscall code
          syscall                 # exit program
