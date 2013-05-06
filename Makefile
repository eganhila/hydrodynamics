FC = gfortran
FFLAGS = -Wall -Wextra -march=native -O3
LDLFLAGS =
LIBS = -llapack

COMPILE = $(FC) $(FFLAGS)
LINK = $(FC) $(LDFLAGS)

OBJS = 
OBJS += HydroDynamics.o

all: HydroDynamics

HydroDynamics: $(OBJS)
	$(LINK) -o $@ $^ $(LIBS)
%.o: %.f90
	$(COMPILE) -o $@ -c $<
clean:
	$(RM) $(OBJS) *.mod
