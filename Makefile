.PHONY: main clean

a.out: main.o server.o
	@gcc $^ -o $@
	@rm -f *.o

clean:
	@rm -rf *.out *.o core
