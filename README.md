# Tests for MPI Sessions extensions to the MPI API

To build these tests you will need the following package:

- MPI Sessions prototype

## Installing the prototype

```
git clone --recursive git@github.com:hpc/ompi.git
cd ompi
git checkout sessions_new
./autogen.pl
./configure --prefix=my_sandbox 
make -j install
```

## Installing the tests

```
export PATH=my_sandbox/bin:$PATH
git clone  https://github.com/tomhers/sessions_tests.git
cd sessions_tests
make
```

## Running the tests

These tests can be run using the ```mpirun``` installed as part of the build of the
prototype.

To run using mpirun:

```
mpirun -np 4 ./sessions_test1
mpirun -np 4 ./sessions_test2
mpirun -np 4 ./sessions_test3
mpirun -np 4 ./sessions_test4
mpirun -np 4 ./sessions_test5

```

This example assumes your system has at least 4 slots available for MPI processes.

## Test documentation

sessions_test1: Initialize one session, finalize that sessions, then initialize another session

sessions_test2: Initialize two sessions and perform operations with each session simultaneously, then finalize both sessions

sessions_test3: Try to make a group from an invalid pset (should fail)

sessions_test4: Try to make a group from a pset using MPI_GROUP_NULL (should fail)

sessions_test5: Initialize two sessions, perform functions with one session and finalize that session, then perform functions with the other session after the first has been finalized

sessions_test6: Same as sessions_test1 but with the sessions using different names

sessions_test7: Initialize two sessions, perform operations with one and finalize it, then perform operations with the other and finalize it

sessions_test8: Initialize two sessions, create one comm in each, and compare them (should fail because objects from different sessions shall not be intermixed with each other in a single MPI procedure call per the MPI standard)

sessions_test9: Initialize the World model and Sessions model, make a comm using the sessions and split it, then make an intercomm using the split comm from the session and MPI_COMM_WORLD (should fail because MPI objects derived from the Sessions model shall not be intermixed in a single MPI
procedure call with MPI objects derived from the World model per the MPI standard)

sessions_test10: Initialize World model, initialize Sessions model, finalize Sessions model, finalize World model

sessions_test11: Initialize World model, initialize Sessions model, finalize World model, finalize Sessions model

sessions_test12: Initialize Sessions model, initialize World model, finalize Sessions model, finalize World model

sessions_test13: Initialize Sessions model, initialize World model, finalize World model, finalize Sessions model

sessions_test14: Initialize a session, create a comm, then try to use that comm with a comm from MPI_Comm_get_parent (should fail because MPI objects derived from the Sessions Model shall not be intermixed in a single MPI procedure call with MPI objects derived from the communicator obtained from a call to MPI_COMM_GET_PARENT or MPI_COMM_JOIN)

