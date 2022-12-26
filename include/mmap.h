#ifndef __MMAP_H__
#define __MMAP_H__

void *mmap(void *addr, unsigned long length, int prot, int flags, int fd, int offset);
int munmap(void *addr, unsigned long length);

#endif

