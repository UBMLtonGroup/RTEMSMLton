#!/bin/bash
build/bin/mlton -codegen c -target i386-rtems4.10 -keep rssa  $1
