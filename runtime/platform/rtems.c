#include "platform.h"
#include "diskBack.unix.c"
#include "sysctl.c"

void GC_release (void *base, size_t length) {
//        munmap_safe (base, length);
}

void *GC_mmapAnon (void *start, size_t length) {
    void* c = malloc(length);
    return c;
}

void GC_displayMem(void) {

}
