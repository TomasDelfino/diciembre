# Diciembre - Organización de Computadoras

## Ejercicio

1. Implementar en ensamblador de MIPS 32 el siguiente programa de C.

```c
#include <stdio.h>

// globals
int array[] = {2, 7, 4, 6, 5, 3, 1};
int size = 7;

// swap helper for arrays
void swap(int arr[], int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

// insertion sort for arrays of size n
void sort(int arr[], int n) {
  int i = 1;
  int j;
  while (i < n) {
    j = i;
    while (j > 0 && arr[j - 1] > arr[j]) {
      swap(arr, j, j - 1);
      j--;
    }
    i++;
  }
}

// main program
int main() {
  sort(array, size);
  for (int i = 0; i < size; i++)
    printf("%d ", array[i]);
  printf("\n");
  return 1;
}
```
2. Entender la implementación propuesta y defenderla de manera oral.
3. La solución propuesta tiene que implementar las funciones `swap` y `sort` tal como se realiza en el programa de C.
4. Usar instrucciones de la siguiente lista únicamente:
  - add
  - addi
  - sw
  - lw
  - li
  - la
  - syscall
  - `completar lista...`
