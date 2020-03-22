#include <stdio.h>
extern __thread int tls_var;

int main(int argc, char *argv[]) {
  printf("%p\n", &tls_var);
}
