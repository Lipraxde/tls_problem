#include <stdio.h>

extern void print_tls_var();

__thread int tls_var;

int main(int argc, char *argv[]) {
  printf("%p\n", &tls_var);
  print_tls_var();
}
