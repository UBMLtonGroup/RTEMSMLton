RTEMS="/home/vagrant/development/rtems/4.10/i386-rtems4.10/pc386/lib"
GMP="/usr/local"

PATH=${PATH}:/home/vagrant/development/rtems/4.10/bin

cp runtime/Makefile.rtems runtime/Makefile
cd runtime && make clean && cd ..


make TARGET=i386-rtems4.10 TARGET_OS=rtems TARGET_ARCH=X86 \
    CFLAGS="-pipe -I${GMP}/include -L${GMP}/lib -B$RTEMS  \
    -specs bsp_specs -qrtems -g -Wall -msoft-float \
    -Wl,-Ttext,0x00100000 -mtune=i386 -DNO_FENV_H" \
    COMPILE_FAST=yes dirs runtime

cp rtems-constants build/lib/targets/i386-rtems4.10/constants
cp rtems-mlton build/bin/mlton
