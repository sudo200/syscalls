#ifndef __GETDENTS_H__
#define __GETDENTS_H__

#include "types.h"

long getdents(unsigned int fd, struct linux_dirent *dirp, unsigned int count);

#endif  //__GETDENTS_H__

