#!/bin/bash
make TARGET=sparc-rtems4.10 TARGET_OS=rtems TARGET_ARCH=sparc CFLAGS="-pipe -B/mnt/rtems/rtems/development/rtems/rtems-leon3/sparc-rtems4.10/leon3/lib -specs bsp_specs -qrtems -g -Wall -O2 -mcpu=cypress -msoft-float -B/mnt/rtems/gmp" $@
