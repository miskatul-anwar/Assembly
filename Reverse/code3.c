#include <stdio.h>
int main(void) {
  int i;
  puts("Enter a number: ");
  scanf("%d", &i);
  i = i / 0;
  return 0;
}
