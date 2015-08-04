cd runtime && make clean && cd ..
cp runtime/Makefile.original runtime/Makefile
make all-no-docs
