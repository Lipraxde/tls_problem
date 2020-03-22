#include <stdio.h>

__thread int tls_var = 8;

void print_tls_var() {
  printf("*%p, %d\n", &tls_var, tls_var);
}
