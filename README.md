### Running C++ application in Windows that relies on DLL created by Cygwin
Uses Cygwin to create a DLL that gets loaded by a C++ application. As a result,
the C++ application depends on

* The DLL that gets built by Cygwin
* The Cygwin DLL


### Prerequisites
* Cygwin is installed
* GNU g++ is installed
* Building and testing can be performed in Cygwin command prompt


### Building the DLL
    $ ./build.sh


### Testing the DLL
  * Copy `cygwin1.dll` to the folder of the functional test executable (the
    functional test executable gets created in the next step)
  * Test the DLL by invoking `./test.sh`
  * If you want to confirm that the executable requires the `cygwin1.dll`,
    * Delete the `cygwin1.dll`
    * Open a Windows command prompt
    * `cd` to folder of this project
    * Invoke `functionalTest.exe` and note that it fails because can't find `cygwin1.dll`
    * Restore `cygwin1.dll` to this folder
    * Run `functionalTest.exe` again and note that the DLL created by `build.sh`
      prints a simple hello world message 
