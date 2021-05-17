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

sessions_test1: Initialize one session, finalize that sessions, then initialize another session.

sessions_test2: Initialize two sessions and perform operations with each session simultaneously, then finalize both sessions.

sessions_test3: Try to make a group from an invalid pset (should fail)

sessions_test4: Try to make a group from a pset using MPI_GROUP_NULL (should fail)

sessions_test5: Initialize two sessions, perform functions with one session and finalize that session, then perform functions with the other session after the first has been finalized. 


