# plantilla para la solucion

.data                     # declaracion de variables globales
sp: .asciiz " "
size: .word 7             # int size = 7;
array: .word 1, 3, 2, 4, 5, 6, 7      # int array[] = {1, 3, 2, 4, 5, 6, 7}
.text
.globl main

swap:     nop             # funcion swap
		                  # ...codigo
           jr $ra         # return

sort:     nop             # funcion sort
                          # ...codigo
          jr $ra          # return

main:
	   li       $t0, 0             # int i = 0
       li       $t1, 7             # loopear mientras i < 7
loop:  bge      $t0, $t1, exit     # while (i < 3)
       la       $t3, array         # array base address
       mul      $t4, $t0, 4        # offset = i * 4 (cada word son 4 bytes)
       add      $t5, $t4, $t3      # address = offset + base address
       lw       $a0, 0($t5)        # $a0 = array[i]
       li       $v0, 1             # syscall code print integer
       syscall                     # printf("%d", array[i])
       la       $a0, sp            # $a0 = " "
       li       $v0, 4             # syscall code print string
       syscall                     # printf(" ")
       addi     $t0, $t0, 1        # i++
       j loop                      # volver a loopear
exit:  li       $v0, 10            # syscall code exit
       syscall                     # exit
