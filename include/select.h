#ifndef __SELECT_H__
#define __SELECT_H__

#include "types.h"

int select(int nfds, fd_set *readfds, fd_set *writefds, fd_set *exceptfds, struct timeval *timeout);

#endif

