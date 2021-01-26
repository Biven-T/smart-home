CC:= gcc
CFLAGS:= -g -Wall
.PHONY: main clean

a.out: main.o server.o
	gcc $^ -o $@

clean:
	@rm -rf *.out *.o core
