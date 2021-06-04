MPICC = mpicc
MPIFC = mpifort

# Example programs to build

EXAMPLES = \
	 sessions_test1 \
	 sessions_test2 \
	 sessions_test3 \
	 sessions_test4 \
	 sessions_test5 \
	 sessions_test6 \
	 sessions_test7 \
	 sessions_test8 \
	 sessions_test9 \
	 sessions_test10 \
	 sessions_test11 \
	 sessions_test12 \
	 sessions_test13 \
	 sessions_test14 


# Default target.  Always build the C MPI examples.  Only build the
# others if we have the appropriate Open MPI / OpenSHMEM language
# bindings.

all: sessions_test1 sessions_test2 sessions_test3 sessions_test4 sessions_test5 sessions_test6 sessions_test7 sessions_test8 sessions_test9 sessions_test10 sessions_test11 sessions_test12 sessions_test13 sessions_test14


# The usual "clean" target

clean:
	rm -f $(EXAMPLES) *~ *.o

# Don't rely on default rules for the Fortran and Java examples

sessions_test1: sessions_test1.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
sessions_test2: sessions_test2.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
sessions_test3: sessions_test3.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
sessions_test4: sessions_test4.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
sessions_test5: sessions_test5.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
sessions_test6: sessions_test6.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
sessions_test7: sessions_test7.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
sessions_test8: sessions_test8.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
sessions_test9: sessions_test9.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
sessions_test10: sessions_test10.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
sessions_test11: sessions_test11.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
sessions_test12: sessions_test12.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
sessions_test13: sessions_test13.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
sessions_test14: sessions_test14.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
