#include <stdio.h>

// globals
int x = 6;
int y = 4;

int sum(int a, int b) {
  return a + b;
}

// implementacion recursiva de la funcion factorial
int fact(int n) {
  if (n <= 1)
    return 1;
  else
    return n * fact(n - 1);
}

int main() {
  int result = sum(x, y);
  printf("%d\n", result);
  result = fact(x);
  printf("%d\n", result);
}
