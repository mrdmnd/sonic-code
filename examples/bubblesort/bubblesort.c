#include<stdio.h>
#include<stdlib.h>
#include<time.h>

void bubblesort(int array[], int len) {
  int i, j, tmp;
  for(i = len-1; i > 0; i--) {
    for(j = 0; j <= i; j++) {
      if(array[j-1] > array[j]) {
        tmp = array[j-1];
        array[j-1] = array[j];
        array[j] = tmp;
      }
    }
  }
}

void printarray(int array[], int len) {
  int i;
  for(i = 0; i < len; i++) {
    printf("%d\n", array[i]);
  }
}

void initarray(int array[], int len) {
  srand(time(NULL));
  int n;
  for(n = 0; n < len; ++n) {
    array[n] = rand();
  }
}

int main(int argc, char** argv) {
  int NUM = atoi(argv[1]);
  int numbers[NUM];
  initarray(numbers, NUM);
  printf("Start:\n");
  printarray(numbers, NUM);
  bubblesort(numbers, NUM);
  printf("End:\n");
  printarray(numbers, NUM);
}
