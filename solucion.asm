# plantilla para la solucion

.data                     # declaracion de variables globales
size: .word 7             # int size = 7;

.text
.globl main

swap:     nop             # funcion swap
                          # ...codigo
          jr $ra          # return

sort:     nop             # funcion sort
                          # ...codigo
          jr $ra          # return

main:     nop             # aca empieza el programa

          li $v0, 10      # exit syscall code
          syscall         # exit program
