GMP="/home/$(whoami)/rtems-dev/gmp-6.1.2-i386"
GMP_LIB="$GMP/lib"
RTEMS="/home/$(whoami)/rtems-dev/rtems/rtems-4.11-host/i386-rtems4.11/pc386/lib"
PATH="/home/$(whoami)/rtems-dev/rtems/4.11/bin:$PATH"

cp runtime/Makefile.rtems runtime/Makefile
cd runtime && make clean && cd ..
make TARGET=i386-rtems4.11 TARGET_OS=rtems TARGET_ARCH=X86 \
    CFLAGS="-pipe -B$RTEMS  \
    -specs bsp_specs -qrtems -g -Wall -msoft-float -m32 \
    -B$GMP -Wl,-Ttext,0x00100000 -mtune=i386 -DNO_FENV_H" \
    COMPILE_FAST=yes dirs runtime


#make TARGET=i386-rtems4.11 TARGET_OS=rtems TARGET_ARCH=x86 CFLAGS="-pipe -B$RTEMS -specs bsp_specs -qrtems -g -Wall -msoft-float -m32 -B$GMP -Wl,-Ttext,0x00100000 -mtune=i386 -DNO_FENV_H" gen/gen-types.stamp

cp runtime/Makefile.original runtime/Makefile

#cp rtems-constants build/lib/mlton/targets/i386-rtems4.11/constants
