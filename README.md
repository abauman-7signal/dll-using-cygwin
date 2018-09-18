### Running C++ application in Windows that relies on DLL created by Cygwin
Uses Cygwin to create a DLL that gets loaded by a C++ application. As a result,
the C++ application depends on

* The DLL that gets built by Cygwin
* The Cygwin DLL


### Prerequisites
* Cygwin is installed
* GNU g++ is installed


### Building the DLL
    $ ./build.sh


### Testing the DLL
  * Copy `cygwin1.dll` to the folder of the functional test executable (the
    functional test executable gets created in the next step)
  * Test the DLL by invoking
    $ ./test.sh
