main: main.o tls_var.o
	gcc $^ -o $@

main.o: main.c
	gcc $^ -c -o $@

tls_var.o: tls_var.c
	gcc $^ -c -o $@
