# Example makefile

# Variable declaration for makefiles

PROG = examplestart
FC = gfortran
FCFLAGS = -O2
# FCFLAGS = -Wall -pedantic
# FCFLAGS = -Wall -pedantic -fcheck=all -fbacktrace -g -O0

#target : depend from
all : $(PROG)

$(PROG) : $(PROG).f90
	$(FC) $(FCFLAGS) -o $@ $<
#    ^        ^
#    |        |
# [TAB] COMMAND LINE

clean :
	@echo "Cleaning up "$(PROG)" for "${USER}
	@rm -f $(PROG)     #                 ^
#    ^        ^                              |
#    |        |                              |
# [TAB] COMMAND LINE             SHELL VARIABLES WITH CURLY 
#   The @ character suppress the output
