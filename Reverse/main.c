#include <stdio.h>
#include <stdlib.h>
void tryhackme(void);
int main() { return 69; }
void tryhackme(void) {
  FILE *f = fopen("pass.txt", "r");
  char *passkey = malloc(1 * sizeof(char));
  fgets(passkey, 10, f);
}
