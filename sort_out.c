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

// insertion sort for arrays
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
