#ifndef __MREMAP_H__
#define __MREMAP_H__

void *mremap(void *old_address, unsigned long old_size, unsigned long new_size, int flags, ...);

#endif //__MREMAP_H__

