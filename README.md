MLton is a whole-program optimizing compiler for the Standard ML
programming language. See README.original for MLton's feature
description.

This is a port of MLton to RTEMS X86. 

## Notes of porting
1. This is a *very early* port. Do not use it for real production.
2. RTEMS lacks mmap support, it's implemented in terms of malloc. mumap is... well,
   left unimplemented, which means MLton WILL suffer memory leak if it tries to
   deallocate heaps (fortunately not too common).
3. Network related APIs are all disabled due to lack of support in RTEMS and there
   does not seem to be a trivial way to fix it.

## Compiling:

1. Make sure you have installed RTEMS. See RTEMS 
   [quick start guide](https://devel.rtems.org/wiki/TBR/UserManual/Quick_Start).
   The recommended version is *Rtems 4.10*.
2. Compile [GNU GMP](https://gmplib.org/) using RTEMS toolchains.
3. Edit compile-rtems.sh,set RTEMS to the lib dir of your RTEMS installation. Set
   GMP to your GMP installation.
4. Edit rtems-mlton, set GMP to your GMP installation dir, GMP\_LIB to the lib dir
   of your GMP installation, RTEMS to your RTEMS installation's lib dir.
5. Compiling:

    ./compile.sh
    ./compile-rtems.sh

6. Now you type:

    ./build/bin/mlton -help

   you should see i386-rtems4.10 in the target part.
7. Test your program:
   
    ./build/bin/mlton -codegen c -target i386-rtems4.10 hello.sml
    qemu-system-i386 -kernel hello

