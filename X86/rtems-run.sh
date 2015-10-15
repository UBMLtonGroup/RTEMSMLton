#!/bin/bash

qemu-system-i386 -no-reboot -enable-kvm -serial stdio -m 4G -kernel $1
