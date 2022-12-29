#ifndef __READV_H__
#define __READV_H__

#include "types.h"

long readv(int fd, const struct iovec *iov, int iovcnt);

#endif

