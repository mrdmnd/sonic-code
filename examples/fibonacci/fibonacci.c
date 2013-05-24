#include <stdio.h>
#include <stdlib.h>

int fib(int n) {
  int vals[3] = {0,1,1};
  if (n < 2) {
    return vals[n];
  } else {
    int i;
    for (i = 2; i < n; ++i) {
      int b = vals[1];
      int c = vals[2];
      vals[0] = b;
      vals[1] = c;
      vals[2] = b + c;
    }
    return vals[2];
  }
}

int main(char* argc, char** argv) {
  int n = atoi(argv[1]);
  printf("fib(%d) = %d\n", n, fib(n));
}
