#ifndef __STAT_H__
#define __STAT_H__

#include "types.h"

int stat(const char *pathname, struct stat *statbuf);
int fstat(int fd, struct stat *statbuf);
int lstat(const char *pathname, struct stat *statbuf);

#endif

