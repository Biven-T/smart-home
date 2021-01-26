SUBDIR:= src obj
SRCDIR:= src
INCDIR:= $(PWD)/include

CC:= gcc
CFLAGS:= -g -Wall -I $(INCDIR)
BINDIR:= $(PWD)/bin
OBJDIR:= $(PWD)/obj
BIN:= test.out

export CC CFLAGS BINDIR OBJDIR BIN

.PHONY: all clean
all: $(BINDIR) $(SUBDIR)

$(BINDIR):
	mkdir -p bin
$(SUBDIR):ECHO
	make -C $@
ECHO:
	@echo comlile...

clean:
	@rm -rf bin
	@rm -rf $(OBJDIR)/*.o $(OBJDIR)/*.out 
	@rm -rf $(SRCDIR)/*.o 


