main: main.o tls_var.so
	gcc $^ -o $@ -fno-PIC

main.o: main.c
	gcc $^ -c -o $@

tls_var.so: tls_var.c
	gcc $^ -fPIC -shared -o $@

clean:
	rm main main.o tls_var.o tls_var.so -f
