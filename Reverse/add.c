#include <stdio.h>
int sum(int a, int b) { return a + b; }
int main(int argc, char *argv[]) {
  int res = sum(1, 2);
  printf("The result of sum function is %d\n", res);
  return 0;
}
