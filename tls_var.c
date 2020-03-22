#include <stdio.h>

extern __thread int tls_var;

void print_tls_var() {
  printf("*%p, %d\n", &tls_var, tls_var);
}
