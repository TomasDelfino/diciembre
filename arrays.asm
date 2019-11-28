# ejemplo de arrays

.data                              # data segment
sp: .asciiz " "
array: .word 1, 2, 3, 4, 5, 6      # int array[] = {1, 2, 3, 4, 5, 6}

.text                              # code segment
.globl main

main:  li       $t0, 0             # int i = 0
       li       $t1, 6             # loopear mientras i < 6
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
