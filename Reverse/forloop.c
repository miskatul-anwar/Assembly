#include <stdio.h>
int i = 0;
volatile int nop;
int main() {
  nop;
  while (i < 4) {
    i++;
  }
  printf("%d\n", i);
  return 69;
}
