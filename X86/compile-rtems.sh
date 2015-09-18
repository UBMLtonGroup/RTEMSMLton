RTEMS="/mnt/work/RTEMS/rtems/i386-rtems4.10/pc386/lib"
GMP="/mnt/work/RTEMS/gmp-install"

cp runtime/Makefile.rtems runtime/Makefile
cd runtime && make clean && cd ..


make TARGET=i386-rtems4.10 TARGET_OS=rtems TARGET_ARCH=X86 \
    CFLAGS="-pipe -B$RTEMS  \
    -specs bsp_specs -qrtems -g -Wall -msoft-float \
    -B$GMP -Wl,-Ttext,0x00100000 -mtune=i386 -DNO_FENV_H" \
    COMPILE_FAST=yes dirs runtime

cp rtems-constants build/lib/targets/i386-rtems4.10/constants
cp rtems-mlton build/bin/mlton
