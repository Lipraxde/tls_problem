# CFLAGS = -ftls-model=global-dynamic
# CFLAGS = -ftls-model=initial-exec
# CFLAGS = -ftls-model=local-dynamic
# CFLAGS = -ftls-model=local-exec

run: main
	./main

main: main.o tls_var.so
	gcc $^ -o $@ $(CFLAGS)

main.o: main.c
	gcc $^ -c -o $@ $(CFLAGS)

tls_var.so: tls_var.c
	gcc $^ -fPIC -shared -o $@ $(CFLAGS)

clean:
	rm main main.o tls_var.so -f
