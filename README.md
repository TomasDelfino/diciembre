# Diciembre - Febrero

## Proyecto Informático I

### Ejercicio

Construir una aplicación web con Node/Express/Pug que cumpla con las siguientes pautas:
- El backend debe estar hecho en Node/Express.
- El frontend se realiza con plantillas de Pug.
- Para la base de datos se puede usar MongoDB, PostgreSQL o MySQL/MariaDB.
- El código de la app debe estar alojado en GitHub.
- Realizar el _deploy_ de la app a Heroku.
- El estilo de la app puede estar basado en algún framework de CSS como Bootstrap.
- **Extra**: es deseable que la app tenga algún tipo de autenticación y autorización, usando Passport por ejemplo.

La aplicación web es a elección, pero se puede continuar el trabajo sobre el ejemplo de la trivia con las preguntas y respuestas en la base de datos. 

## Organización de Computadoras

### Ejercicio

1. Hacer un fork de este repositorio y usar el archivo `solucion.asm` como plantilla para resolver el ejercicio.
2. Implementar en ensamblador de MIPS 32 el siguiente programa de C.

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
3. Entender la implementación propuesta y defenderla de manera oral.
4. La solución propuesta tiene que implementar las funciones `swap` y `sort` tal como se realiza en el programa de C.
5. Usar instrucciones de la siguiente lista únicamente:
  - add
  - addi
  - sub
  - sw
  - lw
  - li
  - la
  - syscall
  - `completar lista...`
